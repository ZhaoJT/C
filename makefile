VPATH = main : func 
# CC = gcc
XX = g++
# CFLAGS = -Wall -g -O2 -std=c11 -I my_include
CPPFLAGS = -Wall -g -O2 -std=c++11 -I my_include
OBJS = main.o
test : $(OBJS)
	$(XX) -o test $(OBJS)
$(OBJS) : %.o: %.cpp
	$(XX) -c $(CFLAGS) $< -o $@
clean:
	del *.o test.exe
