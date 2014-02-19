//
//  main.m
//  TimeAfterTime
//
//  Created by Sergio Gijón on 19/02/14.
//  Copyright (c) 2014 Sergio Gijón. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSDate *now = [NSDate date];
        NSLog(@"The new date lives at %@", now);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970.", seconds);
        
        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"In 100,000 seconds it will be %@", later);
        
        //Challenge chapter 12
        NSDate *born = [NSDate dateWithString:@"1993-12-07 12:00:10 +0600"];
        NSLog(@"I have been alive for %f seconds", [now timeIntervalSinceDate:born]);
        
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSUInteger day = [cal ordinalityOfUnit:NSDayCalendarUnit inUnit:NSMonthCalendarUnit forDate:now];
        NSLog(@"This is day %lu of the month", day);
        
        // Challenge chapter 13
        NSTimeZone *timeZone = [[NSTimeZone alloc] init];
        NSLog(@"My timezone is %@ and  it's %@ that my timezone is currently in daylight savings time.", [NSTimeZone systemTimeZone], [timeZone isDaylightSavingTime] == NO ? @"false" : @"true");
        
        // Challenge chapter 13
        NSLog(@"My device name is %@", [[NSHost currentHost] localizedName]);
        
        
        
    }
    return 0;
}

