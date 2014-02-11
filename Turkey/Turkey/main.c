//
//  main.c
//  Turkey
//
//  Created by Sergio Gijón on 11/02/14.
//  Copyright (c) 2014 Sergio Gijón. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    float weight;
    weight = 14.2;
    printf("The turkey weighs %f\n", weight);
    float cookingTime = 15.0 + 15.0 * weight;
    printf("Cook it for %f minutes\n", cookingTime);
    
    /* Challenge */
    float f1, f2;
    
    
    f1 = 3.14;
    f2 = 42.0;
    
    double result = f1 + f2;
    
    printf ("Double: %f\nFloat: %f\n", result, f1+f2);
    
    
    return 0;
    
}

