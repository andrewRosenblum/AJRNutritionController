//
//  AJRNutritionLabelView.m
//  On Tap
//
//  Created by Andrew Rosenblum on 7/5/12.
//  Copyright (c) 2012 Crash Your Party. All rights reserved.
//

#import "AJRNutritionLabelView.h"

@implementation AJRNutritionLabelView

- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();           //SetUp
    
    //Sets the white color
    CGColorSpaceRef colorspace = CGColorSpaceCreateDeviceRGB();
    CGFloat components[] = {1.0, 1.0, 1.0, 1.0};
    CGColorRef color = CGColorCreate(colorspace, components);
    CGContextSetStrokeColorWithColor(context, color);
    
    //Line 1
    [self drawLine:context withPoint:CGRectMake(20, 61, 0, 0) withLineWidth:4.5];    

    //Line 2
    [self drawLine:context withPoint:CGRectMake(20, 81, 0, 0) withLineWidth:2.0];    

    //Line 3
    [self drawLine:context withPoint:CGRectMake(20, 100, 0, 0) withLineWidth:2.5];
    
    //Line 4
    [self drawLine:context withPoint:CGRectMake(20, 118, 0, 0) withLineWidth:1.0];    

    //Line 4
    [self drawLine:context withPoint:CGRectMake(20, 138, 0, 0) withLineWidth:1.0];    

    //Line 4
    [self drawLine:context withPoint:CGRectMake(20, 159, 0, 0) withLineWidth:1.0];  
    
    //Line 4
    [self drawLine:context withPoint:CGRectMake(35, 178, 0, 0) withLineWidth:1.0];  
    
    //Line 4
    [self drawLine:context withPoint:CGRectMake(20, 197, 0, 0) withLineWidth:2.5];  

    
    //Release the created C objects
    //CGContextRelease(context);
    CGColorSpaceRelease(colorspace);
    CGColorRelease(color);
}

- (void)drawLine:(CGContextRef)context withPoint:(CGRect)point withLineWidth:(float)width {

    CGContextBeginPath(context);
    
    CGContextMoveToPoint(context, point.origin.x, point.origin.y);
    CGContextAddLineToPoint(context, 220, point.origin.y);
    
    CGContextSetLineWidth(context, width);
    
    // and now draw the Path!
    CGContextStrokePath(context);
}
@end
