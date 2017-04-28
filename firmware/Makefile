SRCDIR = src
OBJDIR = obj
BINDIR = bin

DEVICE     = atmega32u4
CLOCK      = 16000000
PROGRAMMER = -c atmelice
#PROGRAMMER = -c flip1 -u #when using the DFU bootloader
FUSES      = -U hfuse:w:0x99:m -U lfuse:w:0xDE:m -U efuse:w:0xF3:m

SOURCES = $(wildcard $(SRCDIR)/*.c)
OBJECTS = $(SOURCES:$(SRCDIR)/%.c=$(OBJDIR)/%.o)

AVRDUDE = avrdude $(PROGRAMMER) -p $(DEVICE)
COMPILE = avr-gcc -Wall -Os -DF_CPU=$(CLOCK) -mmcu=$(DEVICE) -std=c11

.PHONY: all flash fuse clean disasm

all: $(BINDIR)/main.hex

$(OBJDIR)/%.o: $(SRCDIR)/%.c | $(OBJDIR)
	$(COMPILE) -c $< -o $@

$(BINDIR)/main.elf: $(OBJECTS) | $(BINDIR)
	$(COMPILE) -o $@ $(OBJECTS)

$(OBJDIR) $(BINDIR):
	@mkdir -p $@

flash: $(BINDIR)/main.hex
	$(AVRDUDE) -U flash:w:$<:i

fuse:
	$(AVRDUDE) $(FUSES)

clean:
	rm -rf $(BINDIR) $(OBJDIR)

$(BINDIR)/main.hex: $(BINDIR)/main.elf
	avr-objcopy -j .text -j .data -O ihex $< $@
	avr-size --format=avr --mcu=$(DEVICE) $<

disasm:	$(BINDIR)/main.elf
	avr-objdump -d $<
