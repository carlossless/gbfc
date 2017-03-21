#include <avr/io.h>
#include <avr/pgmspace.h>
#include <util/delay.h>
#include <stdint.h>

#include "jedec.h"
#include "rom.h"

// LED
// F0

static void init();

static int write_rom();
static int verify_rom();

const uint16_t rom_header_start = 0x0000;
const uint16_t rom_header_size = 11;
const unsigned char rom_header[] PROGMEM =
{
  'z', 'e', 'a', 'r', 0, 0xFF, 0xCF, 0xAD, 0x01, 0x02, 0x05
	// 201,0,0,0,0,0,0,0,201,0,0,0,0,0,0,0,201,0,0,0,0,0,0,0,201,0,0,0,0,0,0,0,201,0,0,0,0,0,0,0,201,0,0,0,0,0,0,0,201,0,0,0,0,0,0,0,201,0,0,0,0,0,0,0,195,251,92,0,0,0,0,0,195,252,92,0,0,0,0,0,195,253,92,0,0
};

int main(void)
{
  init();
  _delay_us(100);
  uint8_t device_id = jedec_read_id(1);
  if (device_id == 0xB5) {
    PORTF |= (1 << 0);
  } else {
    PORTF &= ~(1 << 0);
  }
  jedec_chip_erase();
  if (write_rom() && verify_rom()) {
    PORTF |= (1 << 0);
  } else {
    PORTF &= ~(1 << 0);
  }
  for(;;) {
  }
  return 0;
}

static int write_rom()
{
  int segment_start = 0;
  for (int s = 0; s < ROM_SEGMENT_COUNT; s++) {
    rom_segment segment = rom_segments[s];
    uint16_t start = segment.start;
    uint16_t size = segment.size;
    uint16_t end = start + size;
    for (uint16_t addr = start; addr < end; addr++) {
      uint8_t data = pgm_read_byte(&(rom_data[addr - start + segment_start]));
      if (!jedec_write(addr, data)) {
        return 0;
      }
    }
    segment_start += size;
  }
  return 1;
}

static int verify_rom()
{
  int segment_start = 0;
  for (int s = 0; s < ROM_SEGMENT_COUNT; s++) {
    rom_segment segment = rom_segments[s];
    uint16_t start = segment.start;
    uint16_t size = segment.size;
    uint16_t end = start + size;
    for (uint16_t addr = start; addr < end; addr++) {
      uint8_t data = pgm_read_byte(&(rom_data[addr - start + segment_start]));
      if (data != jedec_read(addr)) {
        return 0;
      }
    }
    segment_start += size;
  }
  return 1;
}

static void init()
{
  DDRF = (1 << 0);
  PORTF = (1 << 0);
  jedec_init();
}
