//
//  AJRNutritionViewController.h
//  AJRNutritionControllerDemo
//
//  Created by Andrew Rosenblum on 2/9/13.
//  Copyright (c) 2013 On Tap Media. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface AJRNutritionViewController : UIViewController

- (void)presentInParentViewController:(UIViewController *)parentViewController;

//The basic properties - The values passed to them will be the nutrition popup view
@property (copy) NSString *servingSize;         //Default: ""
@property (nonatomic, assign) int calories;     //Default 0
@property (nonatomic, assign) float fat;        //Default 0
@property (nonatomic, assign) float carbs;      //Default 0
@property (nonatomic, assign) float sugar;      //Default 0
@property (nonatomic, assign) float protein;    //Default 0


//Optional Customizations
@property BOOL shouldDimBackground;             //Default: YES
@property BOOL shouldAnimateOnAppear;           //Default: YES
@property BOOL shouldAnimateOnDisappear;        //Default: YES

//By default, the user can perform a swipe gesture (in the downward direction)
//to dismiss the popup
@property BOOL allowSwipeToDismiss;             //Default: YES



@end
