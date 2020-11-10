CC = gcc
AR = ar -rcs
OBJECTS_MAIN = main.o
OBJECTS_LIB = power.o basicMath.o
FLAGS = -Wall

all: mymaths mymathd mains maind
mains: $(OBJECTS_MAIN) libmyMath.a
	$(CC) $(FLAGS) -o mains $(OBJECTS_MAIN) libmyMath.a
maind: $(OBJECTS_MAIN) libmyMath.so
	$(CC) $(FLAGS) -o maind $(OBJECTS_MAIN) ./libmyMath.so
mymathd: libmyMath.so
libmyMath.so: $(OBJECTS_LIB) myMath.h
	$(CC) -shared -o libmyMath.so $(OBJECTS_LIB)	
mymaths: libmyMath.a
libmyMath.a: $(OBJECTS_LIB) myMath.h
	$(AR) libmyMath.a $(OBJECTS_LIB)
power.o: power.c myMath.h
	$(CC) $(FLAGS) -c -fPIC power.c
basicMath.o: basicMath.c myMath.h
	$(CC) $(FLAGS) -c basicMath.c
main.o: main.c
	$(CC) $(FLAGS) -c main.c

.PHONY: clean all mymaths mymathd

clean:
	rm -f *.o *.a *.so mains maind
