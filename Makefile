# Nom du compilateur C
CC = gcc

# Options du compilateur
CFLAGS = -Wall -g

# Nom des binaires de sortie
TARGET_CALCULATOR = calculator
TARGET_TEST = test

# Source files
SRCS = src/calc.c src/main.c src/test.c

# Object files
OBJS = $(SRCS:src/.c=src/.o)

# Règle par défaut
all: $(TARGET_CALCULATOR) $(TARGET_TEST)

# Règle pour générer le binaire calculator
$(TARGET_CALCULATOR): $(OBJS:src/main.c=src/main.o) $(OBJS:src/calc.c=src/calc.o)
	$(CC) $(CFLAGS) -o $(TARGET_CALCULATOR) src/main.o src/calc.o

# Règle pour générer le binaire test
$(TARGET_TEST): $(OBJS:src/test.c=src/test.o) $(OBJS:src/calc.c=src/calc.o)
	$(CC) $(CFLAGS) -o $(TARGET_TEST) src/test.o src/calc.o

# Règle pour générer les fichiers objets
src/%.o: src/%.c src/calc.h
	$(CC) $(CFLAGS) -c $< -o $@

# Règle pour nettoyer les fichiers générés
clean:
	rm -f src/*.o $(TARGET_CALCULATOR) $(TARGET_TEST)

.PHONY: all clean
