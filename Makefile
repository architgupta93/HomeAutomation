CC=g++
DEBUG_FLAGS=-g -D__DEBUG__
CFLAGS=-c
LDFLAGS=-llibopencv
FINAL_FLAGS=-O3

ALL_HEADERS=
ALL_SRCS=
ALL_OBJS=$(ALL_SRCS:.o=.cpp)

ALL_HEADERS=
ALL_SRCS=
HOME_AUTO_OBJS=$(HOME_AUTO_SRCS:.cpp=.o)

all: home_auto

home_auto: $(HOME_AUTO_OBJS)
	$(CC) $(LDFLAGS) $(HOME_AUTO_OBJS) $(ALL_OBJS) -o $@

%.o: %.cpp $(ALL_HEADERS)
	$(CC) $(CFLAGS) $(DEBUG_FLAGS) $< -o $@
