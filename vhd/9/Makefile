# Simple Makefile
TARGET = johnson
SYSTEMC = /home/lukgla/opt/systemc-2.3.3
# INCDIR = -I. -I/usr/local/systemc-2.2/include
INCDIR = -I. -I/home/lukgla/opt/systemc-2.3.3/include
# LIBDIR = -L. -L/usr/local/systemc-2.2/lib-cygwin
LIBDIR = -L. -L/home/lukgla/opt/systemc-2.3.3/lib-linux64

LIBS   = -lsystemc -lm

CC     = g++
CFLAGS = -g -Wno-deprecated -Wall  -O0 -fpermissive
# -std=c++14
OBJS   = testbench.o

EXE    = $(TARGET)

all: $(EXE)

$(EXE): $(OBJS)  
	$(CC) $(CFLAGS) $(INCDIR) $(LIBDIR) -o $@ $(OBJS) $(LIBS) 2>&1

testbench.o:	testbench.cpp design.h
	$(CC) $(CFLAGS) $(INCDIR) -c $<

clean:
	rm -f $(OBJS) $(EXE) *.vcd

