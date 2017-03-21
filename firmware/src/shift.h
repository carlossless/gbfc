#ifndef _74HC595_H_
#define _74HC595_H_

#include <stdint.h>

void shift_init();
void shift_push(uint16_t addr);

#endif
