#ifndef _SST39_H_
#define _SST39_H_

#include <stdint.h>

void jedec_init(void);
void jedec_prepare_for_gb(void);
int jedec_write(uint16_t addr, uint8_t data);
uint8_t jedec_read(uint16_t addr);
void jedec_chip_erase(void);
void jedec_sector_erase(uint16_t sector_addr);
uint8_t jedec_read_id(uint8_t option_addr);

#endif
