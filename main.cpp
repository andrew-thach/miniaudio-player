// Sources: 
//     https://github.com/mackron/miniaudio?tab=readme-ov-file#examples
//     https://miniaud.io/docs/manual/
#include "miniaudio.h"

#include <iostream>

int main() {
    ma_result result;
    ma_engine engine;

    result = ma_engine_init(NULL, &engine);
    if (result != MA_SUCCESS) {
        std::cout << "Engine failed to initialize." << std::endl;        
        return -1;
    }

    ma_engine_play_sound(&engine, "sample-6s.wav", NULL);

    std::cout << "Press enter to quit...";
    getchar();

    ma_engine_uninit(&engine);
}
