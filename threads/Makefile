SRC_DIR = .
OBJ_DIR = obj
BIN_DIR = bin

OS_NAME = $(shell uname -o)

EXE_EXT =
LIB_EXT = .a
		
ifeq ($(OS_NAME), Cygwin)
	EXE_EXT = .exe
	LIB_EXT = .lib
	# Allow threading to work correctly under Cygwin
	ifeq ($(WIN32), 1)
		CFLAGS += -mwin32
	endif
endif

# For mingw
ifeq ($(OS_NAME), MS/Windows)
	EXE_EXT = .exe
	LIB_EXT = .a
endif

#MSYS
ifeq ($(OS_NAME), Msys)
	EXE_EXT = .exe
	LIB_EXT = .a
endif

LIB_NAME = stdthreads
LIB_FILE = $(BIN_DIR)/lib$(LIB_NAME)$(LIB_EXT)
LIB_OBJS = $(OBJ_DIR)/thrd.o $(OBJ_DIR)/sync.o $(OBJ_DIR)/atomics.o

TESTTHRD_FILE = $(BIN_DIR)/testthrd$(EXE_EXT)
TESTTHRD_OBJS = $(OBJ_DIR)/test.o

AR = ar
CFLAGS += -Wall -Wextra -Werror -pedantic
HAS_NO_STDTHREADS = $(shell $(CC) -lstdthreads /dev/null 2>/dev/stdout | grep -c -E "cannot find|unable to find")

ifeq ($(USE_PTHREAD), 1)
	CFLAGS += -DSTDTHREAD_CONFIG_USE_PTHREAD=1
	LDFLAGS += -lpthread
endif

ifeq ($(DEBUG), 1)
	CFLAGS += -D_DEBUG -g3
else
	CFLAGS += -DNDEBUG -O3 -g0
	LDFLAGS += -Xlinker -s
endif

all: $(OBJ_DIR) $(BIN_DIR) $(LIB_FILE) $(TESTTHRD_FILE)

$(TESTTHRD_FILE): $(LIB_OBJS) $(TESTTHRD_OBJS)
	$(CC) $(TESTTHRD_OBJS) $(LIB_FILE) $(LDFLAGS) -o $@

$(OBJ_DIR):
	@mkdir -p $(OBJ_DIR)

$(BIN_DIR):
	@mkdir -p $(BIN_DIR)

$(LIB_FILE): $(LIB_OBJS)
	$(AR) rcs $@ $^

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ_DIR)/*.o $(LIB_FILE) $(TESTTHRD_FILE)

.PHONY: all clean install
