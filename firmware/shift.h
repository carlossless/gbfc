#ifndef _SHIFT_H_
#define _SHIFT_H_

#include <stdint.h>

void shift_init(void);
void shift_prepare_for_gb(void);
void shift_push(uint16_t addr);

#endif
