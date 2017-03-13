#include "sst39.h"
#include <avr/io.h>
#include <util/delay.h>
#include "74hc595.h"

// FLASH CONTROL
// F5 = CE#
// F6 = OE#
// F7 = WE#

// DATA
// D0-7 = D0-7#

// ADDRESS
// A0-15 = LATCHED REGISTER (74hc595.h)

inline void sst39_send_cmd(uint16_t addr, uint8_t data);
inline void sst39_send_cmd_slow(uint16_t addr, uint8_t data);

void sst39_write(uint16_t addr, uint8_t data)
{
  DDRD = 0xFF;
  PORTF &= ~(1 << 6); //set OE# to low
  PORTF |= (1 << 5) | (1 << 7); //set CE# and WE# to high
  PORTF |= (1 << 6); //set OE# to high
  sst39_send_cmd(0x5555, 0xAA);
  sst39_send_cmd(0x2AAA, 0x55);
  sst39_send_cmd(0x5555, 0xA0);
  sst39_send_cmd(addr, data);
  _delay_us(20); //20us program delay
}

uint8_t sst39_read(uint16_t addr)
{
  DDRD = 0x00;
  PORTD = 0x00;
  PORTF |= (1 << 5) | (1 << 6) | (1 << 7); //CE# OE# WE# all high
  PORTF &= ~((1 << 5) | (1 << 6)); //CE# OE# to low
  shift16(addr);
  uint8_t result = PIND;
  PORTF |= (1 << 5) | (1 << 6); //CE# OE# to high
  return result;
}

void sst39_erase(void)
{
  DDRD = 0xFF;
  PORTF &= ~(1 << 6); //set OE# to low
  PORTF |= (1 << 5) | (1 << 7); //set CE# and WE# to high
  PORTF |= (1 << 6); //set OE# to high
  sst39_send_cmd_slow(0x5555, 0xAA);
  sst39_send_cmd(0x2AAA, 0x55);
  sst39_send_cmd(0x5555, 0x80);
  sst39_send_cmd(0x5555, 0xAA);
  sst39_send_cmd(0x2AAA, 0x55);
  sst39_send_cmd(0x5555, 0x10);
  _delay_ms(20);
}

uint8_t sst39_read_id(uint8_t option_addr)
{
  //enter id mode
  DDRD = 0xFF;
  PORTF &= ~(1 << 6); //OE# low
  PORTF |= (1 << 5) | (1 << 7); //CE# WE# high
  PORTF |= (1 << 6); //OE# high
  sst39_send_cmd(0x5555, 0xAA);
  sst39_send_cmd(0x2AAA, 0x55);
  sst39_send_cmd(0x5555, 0x90);
  _delay_us(0.15); //150ns enter id mode delay
  PORTF &= ~((1 << 5) | (1 << 6)); //CE# OE# low
  DDRD = 0x00;
  PORTD = 0x00;
  shift16(option_addr);
  uint8_t data = PIND;
  PORTF |= (1 << 5); //CE# high

  //exit id mode
  DDRD = 0xFF;
  PORTF |= (1 << 6); //OE# high
  sst39_send_cmd(0x5555, 0xAA);
  sst39_send_cmd(0x2AAA, 0x55);
  sst39_send_cmd(0x5555, 0xF0);
  _delay_us(0.15); //150ns exit id mode delay
  PORTD =~ (1 << 5); //CE# low
  return data;
}

inline void sst39_send_cmd(uint16_t addr, uint8_t data)
{
  shift16(addr);
  PORTF &= ~((1 << 5) | (1 << 7)); //set CE# and WE# to low (latch address)
  PORTD = 0x00;
  PORTD = data;
  PORTF |= (1 << 5) | (1 << 7); //set CE# and WE# to high (latch data)
}

inline void sst39_send_cmd_slow(uint16_t addr, uint8_t data)
{
  shift16(addr);
  PORTB &= ~((1 << 5) | (1 << 7)); //set CE# and WE# to low (latch address)
  _delay_us(0.15);
  PORTD = 0x00;
  PORTD = data;
  PORTB |= (1 << 5) | (1 << 7); //set CE# and WE# to high (latch data)
}
