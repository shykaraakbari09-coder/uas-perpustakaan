CC      = gcc
CFLAGS  = -std=c11 -Wall -Wextra -Wpedantic -Iinclude
TARGET  = perpustakaan
SRCS    = $(wildcard src/*.c)
OBJS    = $(SRCS:.c=.o)

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)

.PHONY: all clean
