TARGET = lab01
CC = g++
CFLAGS = -c -lssl -lcrypto

PREF_SRC = ./src/
PREF_BUILD = ./obj/

SRC = $(wildcard $(PREF_SRC)*.cpp)
OBJ = $(patsubst $(PREF_SRC)%.cpp, $(PREF_BUILD)%.o, $(SRC))

$(TARGET) : $(OBJ)
	$(CC) $(SRC) -o $(TARGET)

$(PREF_BUILD)%.o : $(PREF_SRC)%.cpp
	$(CC) $(CFLAGS) $< -o $@
