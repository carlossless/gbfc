#include "jedec.h"
#include <avr/io.h>
#include <util/delay.h>
#include "shift.h"

// FLASH CONTROL
// B1 = CE#
// B2 = OE#
// B3 = WE#

// DATA
// D0-7 = D0-7#

// ADDRESS
// A0-15 = LATCHED REGISTER (shift.h)

#define CE (1 << 1)
#define OE (1 << 2)
#define WE (1 << 3)

static inline void setup_input(void);
static inline void setup_output(void);

static inline void jedec_read_enable(void);
static inline void jedec_read_disable(void);
static inline void jedec_write_enable(void);
static inline void jedec_write_disable(void);

static inline void jedec_send_cmd(uint16_t addr, uint8_t data);
static inline void jedec_send_cmd_slow(uint16_t addr, uint8_t data);

void jedec_init()
{
  shift_init();
  DDRB  |= CE | OE | WE;
  PORTB |= CE | OE | WE;
  setup_input();
}

void jedec_prepare_for_gb()
{
    shift_prepare_for_gb();
    DDRB  &= ~(CE | OE); // all inputs
    PORTB &= ~(CE | OE); // all high-z
    DDRB  |= WE; // WE high
    PORTB |= WE; // WE high
    DDRD   = 0x00;
    PORTD  = 0x00;
}

static inline void jedec_read_enable()
{
  PORTB &= ~(CE | OE); //CE# OE# to low
}

static inline void jedec_read_disable()
{
  PORTB |= CE | OE; //CE# OE# to high
}

static inline void jedec_write_enable()
{
  PORTB &= ~(CE | WE); //CE# WE# to low
}

static inline void jedec_write_disable()
{
  PORTB |= CE | WE; //CE# WE# to high
}

static inline void setup_input()
{
  DDRD = 0x00;
  PORTD = 0x00;
}

static inline void setup_output()
{
  DDRD = 0xFF;
}

uint8_t jedec_read(uint16_t addr)
{
  setup_input();
  jedec_read_enable();
  shift_push(addr);
  uint8_t result = PIND;
  jedec_read_disable();
  return result;
}

int jedec_write(uint16_t addr, uint8_t data)
{
  int tries = 0;
  if (data == 0xFF) {
    return 1;
  }

retry:
  jedec_send_cmd(0x5555, 0xAA);
  jedec_send_cmd(0x2AAA, 0x55);
  jedec_send_cmd(0x5555, 0xA0);
  jedec_send_cmd(addr, data);
  _delay_us(20); //20us program delay
  if (jedec_read(addr) == data) {
    return 1;
  }
  if (tries++ < 0x10) {
    goto retry;
  }
  return 0;
}

void jedec_chip_erase(void)
{
  jedec_send_cmd_slow(0x5555, 0xAA);
  jedec_send_cmd(0x2AAA, 0x55);
  jedec_send_cmd(0x5555, 0x80);
  jedec_send_cmd(0x5555, 0xAA);
  jedec_send_cmd(0x2AAA, 0x55);
  jedec_send_cmd(0x5555, 0x10);
  _delay_ms(100); // 100ms sector erase delay
}

void jedec_sector_erase(uint16_t sector_addr)
{
  jedec_send_cmd_slow(0x5555, 0xAA);
  jedec_send_cmd(0x2AAA, 0x55);
  jedec_send_cmd(0x5555, 0x80);
  jedec_send_cmd(0x5555, 0xAA);
  jedec_send_cmd(0x2AAA, 0x55);
  jedec_send_cmd(sector_addr, 0x30); // only the A15-A12 bits are taken into account
  _delay_ms(25); // 25ms sector erase delay
}

uint8_t jedec_read_id(uint8_t option_addr)
{
  //enter id mode
  jedec_send_cmd(0x5555, 0xAA);
  jedec_send_cmd(0x2AAA, 0x55);
  jedec_send_cmd(0x5555, 0x90);
  _delay_us(0.15); // 150ns enter id mode delay

  uint8_t data = jedec_read(option_addr);

  //exit id mode
  jedec_send_cmd(0x5555, 0xAA);
  jedec_send_cmd(0x2AAA, 0x55);
  jedec_send_cmd(0x5555, 0xF0);
  _delay_us(0.15); // 150ns exit id mode delay
  return data;
}

static inline void jedec_send_cmd(uint16_t addr, uint8_t data)
{
  setup_output();
  shift_push(addr);
  jedec_write_enable(); // latch address
  PORTD = data;
  jedec_write_disable(); // latch data
  setup_input();
}

static inline void jedec_send_cmd_slow(uint16_t addr, uint8_t data)
{
  setup_output();
  shift_push(addr);
  jedec_write_enable(); // latch address
  _delay_us(0.15);
  PORTD = data;
  jedec_write_disable(); // latch data
  setup_input();
}
