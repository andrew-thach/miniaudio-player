BUILD_DIR = build

player: $(BUILD_DIR)/main.o $(BUILD_DIR)/miniaudio.o
	g++ -o player $(BUILD_DIR)/main.o $(BUILD_DIR)/miniaudio.o -ldl -lpthread -lm

$(BUILD_DIR)/main.o: main.cpp miniaudio/miniaudio.c miniaudio/miniaudio.h | $(BUILD_DIR)
	g++ -c main.cpp -o $(BUILD_DIR)/main.o

$(BUILD_DIR)/miniaudio.o:
	g++ -c miniaudio/miniaudio.c -o $(BUILD_DIR)/miniaudio.o

$(BUILD_DIR):
	mkdir -p $@

clean:
	rm -rf player $(BUILD_DIR)
