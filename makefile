CC = gcc
CFLAGS = -g -Wall -pedantic
LIBRARIES = -lpthread -lrt 

main : main.o  
	${CC} ${CFLAGS} -o semaphoreP main.o  ${LIBRARIES}
	
main.o : main.h


.PHONY : clean remake semrem fsem


clean: 
	rm -f *.o core semaphore *.log

remake :
	make clean
	make

semrem :
	sudo rm -f /dev/shm/sem.semScreen /dev/shm/sem.semKeyboard

fsem : 
	sudo ls /dev/shm