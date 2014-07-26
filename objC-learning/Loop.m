//
//  Loop.m
//  objC-learning
//
//  Created by Gregorio Setti on 26/07/14.
//  Copyright (c) 2014 Gregorio Setti. All rights reserved.
//

#import "Loop.h"

@implementation Loop

/*
Write a program to generate and display a table of n and n2, for integer values of n
ranging from 1 through 10. Be sure to print the appropriate column headings.
 */
+(void)exercise1;
{
    int n, n2;
    
    printf (" N     N^2 \n");
    printf ("---   -----\n");
    
    for (n = 0; n <= 10; ++n) {
        n2 = n*n;
        printf ("%2i     %3i\n", n, n2);
    }
}

/*
Have the program generate every fifth triangular number between 5 and 50.
*/
+(void)exercise2;
{
    int n, triangularNumber;
    
    printf (" N     tN \n");
    printf ("---   -----\n");
    
    for (n = 5; n <= 50; n = n + 5) {
        triangularNumber = n * (n + 1) / 2;
        printf ("%2i     %3i\n", n, triangularNumber);
    }
}

/*
Write a program to generate and print a table of the first 10 factorials.
*/
+(void)exercise3;
{
    int n, fn;
    
    printf (" N     N! \n");
    printf ("---   -----\n");
    
    fn = 1;
    
    for (n = 1; n <= 10; ++n) {
        fn *= n;
        printf ("%2i     %i\n", n, fn);
    }
}

/*
The user can type in the number of triangular numbers to be calculated, and then the numbers one by one.
*/
+(void)exercise5;
{
    int calcTimes, caret, number, triangularNumber;
    
    NSLog(@"How many triangular numbers do you want to calculate?");
    scanf ("%d", &calcTimes);
    
    for (caret = 0; caret < calcTimes; ++caret) {
        NSLog(@"What number do you want to calculate?");
        scanf ("%d", &number);
        
        triangularNumber = number * (number + 1) / 2;
        
        NSLog(@"Triangular number of %d is %d", number, triangularNumber);
    }
}

@end
