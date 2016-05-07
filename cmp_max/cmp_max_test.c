//
//  cmp_max_test.c
//
//
//  Created by Steven Lee on 5/6/16.
//
//

#include <stdio.h>
#include <math.h>
#include "cmp_max.h"

int main () {
    const int SAMPLES = 10;
    FILE* f;
    
    float y0[10];
    float y1[10];
    float y2[10];
    float outputs[10];
    int i, cnt, cnt1, cnt2;
    
    cnt = 0;
    cnt1 = 0;
    cnt2 = 0;
    
    for (i = 0; i < SAMPLES; i++) {
        cnt += 3;
        cnt1 += 1;
        cnt2 += 1;
        y0[i] = cnt;
        y1[i] = cnt1;
        y2[i] = cnt2;
    }
    
    f = fopen("output.dat","w");
    for (i = 0; i < SAMPLES; i++) {
        cmp_max(y0[i], y1[i], y2[i], &outputs[i], true);
        fprintf(f, "Inputs\ny0: %f, y1: %f, y2: %f\nOutput: %f\n", y0[i], y1[i], y2[i], outputs[i]);
    }
    fclose(f);

    printf ("Comparing against output data \n");
      if (system("diff -w output.dat output_gold.dat")) {

    	fprintf(stdout, "*******************************************\n");
    	fprintf(stdout, "FAIL: Output DOES NOT match the golden output\n");
    	fprintf(stdout, "*******************************************\n");
         return 1;
      } else {
    	fprintf(stdout, "*******************************************\n");
    	fprintf(stdout, "PASS: The output matches the golden output!\n");
    	fprintf(stdout, "*******************************************\n");
         return 0;
      }

    printf("Test Complete!\n");
    return 0;
}
