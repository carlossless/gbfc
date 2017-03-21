#ifndef _ROM_H_
#define _ROM_H_

#include <stdint.h>

const int rom_segment_count;
const uint16_t rom_start_addresses[];
const uint16_t rom_sizes[];
const uint8_t rom_data[][] PROGMEM;

#endif
