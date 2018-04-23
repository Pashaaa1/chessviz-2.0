#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "chess.h"

char **arr;

char **board()
{
    arr =  (char**) malloc(9 * sizeof(char*));
    int i,j;

    for (i = 0; i < 9; i++) {
    arr[i] = (char*)malloc(9 * sizeof(char));
        for (j = 0; j < 9; j++) {
            arr[i][j] = ' ';
        }
    }
    
    char gl[]={'r','n','b','q','k','b','n','r'};
    char p ='p';

    for (i=0; i<8; i++) {
         arr[i][0] = 56-i;
    }
    
    