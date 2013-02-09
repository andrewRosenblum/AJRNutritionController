//
//  AJRNutritionLabelCalculation.h
//  AJRNutritionControllerDemo
//
//  Created by Andrew Rosenblum on 2/9/13.
//  Copyright (c) 2013 On Tap Media. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AJRNutritionLabelCalculation : NSObject

//Methods to calulate the various % daily values
+ (NSString *)calculateFatDailyValue:(float)fat;
+ (NSString *)calculateCarbDailyValue:(float)carbs;

@end
