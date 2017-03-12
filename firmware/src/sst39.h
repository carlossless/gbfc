#ifndef _SST39_H_
#define _SST39_H_

#include <stdint.h>

void sst39_write(uint16_t addr, uint8_t data);
uint8_t sst39_read(uint16_t addr);
uint8_t sst39_read_id(uint8_t option_addr);
void sst39_erase(void);

#endif
