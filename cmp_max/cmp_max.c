#include "cmp_max.h"

void cmp_max (float y0, float y1, float y2, float* max, bool en) {
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