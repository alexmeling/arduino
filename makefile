
VPATH = sources headers 
#vpath %.cpp ~/programacion/arduino/arduino/sources/*



objects = main.o ports.o serial.o

main_arduino: $(objects)
	avr-g++  -mmcu=atmega328p -o main_arduino.elf $(objects)
		
main.o: main.cpp ports.h
	avr-g++   -mmcu=atmega328p  -c  main.cpp
ports.o: ports.cpp ports.h
	avr-g++  -mmcu=atmega328p  -c sources/ports.cpp

serial.o: serial.cpp serial.h
	avr-g++ -mmcu=atmega328p -c sources/serial.cpp
clean: 
	rm main_arduino.hex main_arduino.elf $(objects)
