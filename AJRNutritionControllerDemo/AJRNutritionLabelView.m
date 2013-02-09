//
//  AJRNutritionLabelView.m
//  On Tap
//
//  Created by Andrew Rosenblum on 7/5/12.
//  Copyright (c) 2012 Crash Your Party. All rights reserved.
//
//
//Copyright (c) 2013, Andrew Rosenblum All rights reserved.
//
//Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
//
//Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution. Neither the name of the nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission. THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.



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
