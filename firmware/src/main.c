#include <avr/io.h>
#include <util/delay.h>
#include <stdint.h>

#include "sst39.h"

// LED
// F0

static void init();
static void write_test();
static int verify_test();

const char test_value[] = {'z', 'e', 'a', 'r'};
const char wrong_value[] = {'z', 'e', 'a', 'r'};

const uint16_t test_length = 4;

int main(void)
{
  init();
  uint8_t device_id = sst39_read_id(1);
  if (device_id == 0xB5) {
    PORTF |= (1 << 0);
  } else {
    PORTF &= ~(1 << 0);
  }
  sst39_erase();
  write_test();
  if (verify_test()) {
    PORTF |= (1 << 0);
  } else {
    PORTF &= ~(1 << 0);
  }
  for(;;) {
  }
  return 0;
}

static void write_test()
{
  uint16_t addr = 0;
  for (addr = 0; addr < test_length; addr++) {
    uint8_t letter = test_value[addr];
    sst39_write(addr, letter);
  }
}

static int verify_test()
{
  uint16_t addr = 0;
  for (addr = 0; addr < test_length; addr++) {
    uint8_t letter = wrong_value[addr];
    if (letter != sst39_read(addr)) {
      return 0;
    }
  }
  return 1;
}

static void init()
{
  DDRC = (1 << 6) | (1 << 7);
  DDRB = (1 << 4) | (1 << 5);
  DDRF = (1 << 0) | (1 << 5) | (1 << 6) | (1 << 7);
  PORTF = 0x01;
}
