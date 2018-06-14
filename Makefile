CC = gcc
CFLAGS = -W -Wall -pthread
TARGET = LoRa_exe
OBJECTS = SPI.o GPIO.o Main.o


all : $(TARGET)

$(TARGET) : $(OBJECTS)
	$(CC)   $(CFLAGS) -o $@ $^

clean :
	rm -fr  *.o  LoRa_exe


ac :
	rm -fr  *.o *.c *.h LoRa_exe