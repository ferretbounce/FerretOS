CC = gcc

CFLAGS = -ffreestanding -nostdlib -nostdinc -fno-builtin -fno-stack-protector \
	-Wall -pedantic -Werror -Wextra -std=gnu89

OBJS = kernel.o

all: $(OBJS)

kernel.o: kernel.c ../drivers/screen.c ../drivers/screen.h
	@$(CC) $(CFLAGS) -c $< -o $@

.PHONY: clean clean-all

clean:
	@-rm $(OBJS)

clean-all:
	@-rm *.o
