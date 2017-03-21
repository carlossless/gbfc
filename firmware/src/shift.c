#include "shift.h"
#include <avr/io.h>
#include <util/delay.h>

// B4 = SRCLK (SHIFT CLOCK)
// B5 = RCLK (LATCH CLOCK)
// C6 = SER 1
// C7 = SER 2

#define SER_1_PIN 6
#define SER_2_PIN 7

#define SRCLK (1 << 4)
#define RCLK (1 << 5)
#define SER_1 (1 << SER_1_PIN)
#define SER_2 (1 << SER_2_PIN)

void shift_init()
{
  DDRC &= ~(SER_1 | SER_2);
  DDRB &= ~(SRCLK | RCLK);
}

void shift_push(uint16_t addr)
{
  //shift registers share clock pins but use different serial in pins
  const uint8_t* data = (const uint8_t*) &addr;
  for (int8_t x = 7; x >= 0; --x) {
    PORTC &= ~(SER_1 | SER_2); //clear pins
    PORTC |= ((data[0] >> x) & 1) << SER_1_PIN;
    PORTC |= ((data[1] >> x) & 1) << SER_2_PIN;
    PORTB |= SRCLK;
    PORTB &= ~SRCLK; //pulse the shift clock
  }
  PORTB |= RCLK; //latch (send to parallel output)
  PORTB &= ~RCLK;
}
