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
  PORTF &= ~(1 << 0);
  if (write_rom() && verify_rom()) {
    PORTF |= (1 << 0);
  } else {
    PORTF &= ~(1 << 0);
  }
  jedec_prepare_for_gb();
  for(;;) {
  }
  return 0;
}

static void init()
{
  DDRF = (1 << 0);
  PORTF = (1 << 0);
  jedec_init();
}

static int write_rom()
{
  int s = 0;
  uint16_t offset = 0;
  for (uint16_t addr = 0; addr < 32768; addr++) {
    if (s < ROM_SEGMENT_COUNT) {
      rom_segment segment = rom_segments[s];
      if (segment.start == addr) {
        for (addr = segment.start; addr < segment.start + segment.size; addr++) {
          uint8_t data = pgm_read_byte(&(rom_data[addr - segment.start + offset]));
          if (!jedec_write(addr, data)) {
            return 0;
          }
        }
        offset += segment.size;
        s++;
      } else {
        if (!jedec_write(addr, 0x00)) {
          return 0;
        }
      }
    } else {
      if (!jedec_write(addr, 0x00)) {
        return 0;
      }
    }
  }
  return 1;
}

static int verify_rom()
{
  int s = 0;
  uint16_t offset = 0;
  for (uint16_t addr = 0; addr < 32768; addr++) {
    if (s < ROM_SEGMENT_COUNT) {
      rom_segment segment = rom_segments[s];
      if (segment.start == addr) {
        for (addr = segment.start; addr < segment.start + segment.size; addr++) {
          uint8_t data = pgm_read_byte(&(rom_data[addr - segment.start + offset]));
          if (jedec_read(addr) != data) {
            return 0;
          }
        }
        offset += segment.size;
        s++;
      } else {
        if (jedec_read(addr) != 0x00) {
          return 0;
        }
      }
    } else {
      if (jedec_read(addr) != 0x00) {
        return 0;
      }
    }
  }
  return 1;
}
