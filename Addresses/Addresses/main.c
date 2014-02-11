//
//  main.c
//  Addresses
//
//  Created by Sergio Gijón on 11/02/14.
//  Copyright (c) 2014 Sergio Gijón. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    printf("this function starts at %p.\n", main);
    int i = 17;
    int *addressOfI = &i;
    
    printf("\ni stores its value at %p.\n", addressOfI);
    printf("the int stored at addressOfI is %d.\n", *addressOfI);
    *addressOfI = 89;
    printf("Now i is %d.\n", i);
    
    printf("\nAn int is %zu bytes.\n", sizeof(int));
    printf("A pointer is %zu bytes.\n", sizeof(int *));
    printf("adressOfI is %zu bytes.\n", sizeof(addressOfI));
    printf("*adressOfI is %zu bytes.\n", sizeof(*addressOfI));
    return 0;
}

