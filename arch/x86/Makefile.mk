##########################################
# Architecture-specific Makefile fragment
# Tailored for Apple Silicon (M1)
##########################################

# Use Clang (the default gcc on macOS is Clang under the hood)
CC=clang

# Stable C99, basic optimizations, common include path, and barrier support
CFLAGS = \
    -std=c99 \
    -O2 \
    -I../common \
    -DWITH_BARRIER \
    -Wall

LD_FLAGS =
LD_LIBS  = -lpthread -lm
