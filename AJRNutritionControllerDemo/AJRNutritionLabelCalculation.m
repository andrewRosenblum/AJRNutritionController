//
//  AJRNutritionLabelCalculation.m
//  AJRNutritionControllerDemo
//
//  Created by Andrew Rosenblum on 2/9/13.
//  Copyright (c) 2013 On Tap Media. All rights reserved.
//

#import "AJRNutritionLabelCalculation.h"

@implementation AJRNutritionLabelCalculation

//Returns a formatted string with the daily fat %
+ (NSString *)calculateFatDailyValue:(float)fat {
    NSString *tmpString = [NSString stringWithFormat:@"%.1f", (fat / 65) * 100];
    tmpString = [tmpString stringByAppendingString:@"%"];
    return tmpString;
}

//Returns a formatted string with the daily carb %
+ (NSString *)calculateCarbDailyValue:(float)carbs {
    NSString *tmpString = [NSString stringWithFormat:@"%.1f", (carbs / 300) * 100];
    tmpString = [tmpString stringByAppendingString:@"%"];
    return tmpString;
}

@end
