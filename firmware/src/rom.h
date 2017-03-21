#ifndef _ROM_H_
#define _ROM_H_

#include <stdint.h>

#define ROM_SEGMENT_COUNT 2

typedef struct {
  uint16_t start;
  uint16_t size;
} rom_segment;

extern const rom_segment rom_segments[];
extern const uint8_t rom_data[];

#endif
