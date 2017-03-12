#include "74hc595.h"
#include <avr/io.h>

// B4 = SRCLK (SHIFT CLOCK)
// B5 = RCLK (LATCH CLOCK)
// C6 = SER 1
// C7 = SER 2

void shift16(uint16_t addr)
{
  //shift registers share clock pins but use different serial in pins
  const uint8_t* data = (const uint8_t*) &addr;
  int8_t x;
  PORTB &= ~((1 << 4) | (1 << 5));
  for (x = 7; x >= 0; --x) {
    PORTC &= ~((1 << 6) | (1 << 7)); //clear pins
    PORTC |= ((data[0] >> x) & 1) << 6;
    PORTC |= ((data[1] >> x) & 1) << 7;
    PORTB |= (1 << 4);
    PORTB &= ~(1 << 4); //pulse the shift clock
  }
  PORTB |= (1 << 5); //latch (send to parallel output)
  PORTB &= ~(1 << 5);
}
