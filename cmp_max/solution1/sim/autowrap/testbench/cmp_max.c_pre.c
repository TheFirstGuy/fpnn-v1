# 1 "C:/Users/stevenlee/Documents/cmp_max/cmp_max.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/stevenlee/Documents/cmp_max/cmp_max.c"
# 1 "C:/Users/stevenlee/Documents/cmp_max/cmp_max.h" 1
# 12 "C:/Users/stevenlee/Documents/cmp_max/cmp_max.h"
# 1 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/stdbool.h" 1 3 4
# 13 "C:/Users/stevenlee/Documents/cmp_max/cmp_max.h" 2

void cmp_max (float, float, float, float*, _Bool);
# 2 "C:/Users/stevenlee/Documents/cmp_max/cmp_max.c" 2

void cmp_max (float y0, float y1, float y2, float* max, _Bool en) {
    if (en) {
        if (y0 > y1 && y0 > y2) {
            *max = y0;
        }
        else if (y1 > y0 && y1 > y2) {
            *max = y1;
        }
        else {
            *max = y2;
        }
    }
}
