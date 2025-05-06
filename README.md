# miniaudio-player
This repo hosts starter code that plays a [WAV-formatted](https://en.wikipedia.org/wiki/WAV) audio file using [miniaudio](https://miniaud.io/), a cross-platform library that supports audio playback and capture.

The library consists of a single source file [miniaudio.h](miniaudio/miniaudio.h), sourced from the original author's [repository](https://github.com/mackron/miniaudio).

# Compilation


A Makefile has been provided, to simplify and speed up compilation.

```bash
make
```

# Running the program.
The Makefile produces an executable ```player```. To run it:

```bash
./player
```


# Acknowledgements
This example was adapted from: https://github.com/mackron/miniaudio#examples

More features/examples are showcased here: https://miniaud.io/docs/examples/index.html
