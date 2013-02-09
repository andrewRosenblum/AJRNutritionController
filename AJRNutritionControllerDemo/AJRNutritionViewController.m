//
//  AJRNutritionViewController.m
//  AJRNutritionControllerDemo
//
//  Created by Andrew Rosenblum on 2/9/13.
//  Copyright (c) 2013 On Tap Media. All rights reserved.
//

#import "AJRNutritionViewController.h"
#import "AJRNutritionLabelView.h"
#import "AJRBackgroundDimmer.h"
#import "AJRNutritionLabelCalculation.h"

@interface AJRNutritionViewController () {
    IBOutlet AJRNutritionLabelView *backgroundView;
    AJRBackgroundDimmer *backgroundGradientView;
    
    IBOutlet UILabel *servingLabel;
    IBOutlet UILabel *caloriesLabel;
    IBOutlet UILabel *fatLabel;
    IBOutlet UILabel *carbsLabel;
    IBOutlet UILabel *sugarLabel;
    IBOutlet UILabel *proteinLabel;
    
    IBOutlet UILabel *fatDailyValueLabel;
    IBOutlet UILabel *carbDailyValueLabel;
}


@end

@implementation AJRNutritionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:@"AJRNutritionViewController" bundle:nibBundleOrNil];
    if (self) {
        self.shouldDimBackground = YES;
        self.shouldAnimateOnAppear = YES;
        self.shouldAnimateOnDisappear = YES;
        self.allowSwipeToDismiss = YES;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //Sets up the background of the nutrition view
    backgroundView.layer.cornerRadius = 10.0f;
    backgroundView.layer.masksToBounds = YES;
    backgroundView.layer.borderColor = [UIColor whiteColor].CGColor;
    backgroundView.layer.borderWidth = 4.5f;
    
    //Sets the labels
    servingLabel.text =  self.servingSize;
    caloriesLabel.text = [NSString stringWithFormat:@"%i", self.calories];
    fatLabel.text = [NSString stringWithFormat:@"%.1fg", self.fat];
    carbsLabel.text = [NSString stringWithFormat:@"%.01fg", self.carbs];
    sugarLabel.text = [NSString stringWithFormat:@"%.01fg", self.sugar];
    proteinLabel.text = [NSString stringWithFormat:@"%.01fg", self.protein];
    
    //Calculates the % daily value for the appropiate fields
    fatDailyValueLabel.text = [AJRNutritionLabelCalculation calculateFatDailyValue:[self fat]];
    carbDailyValueLabel.text =  [AJRNutritionLabelCalculation calculateCarbDailyValue:[self carbs]];
    
    if (self.allowSwipeToDismiss) {
        //Add a swipe gesture recognizer to dismiss the view 
        UISwipeGestureRecognizer *recognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(close:)];
        [recognizer setDirection:(UISwipeGestureRecognizerDirectionDown)];
        [self.view addGestureRecognizer:recognizer];
    }
}

- (void)presentInParentViewController:(UIViewController *)parentViewController {
    //Presents the view in the parent view controller
    
    if (self.shouldDimBackground == YES) {
        //Dims the background, unless overridden
        backgroundGradientView = [[AJRBackgroundDimmer alloc] initWithFrame:parentViewController.view.bounds];
        [parentViewController.view addSubview:backgroundGradientView];
    }
    
    //Adds the nutrition view to the parent view, as a child
    [parentViewController.view addSubview:self.view];
    [parentViewController addChildViewController:self];
    
    
    //Adds the bounce animation on appear unless overridden
    if (!self.shouldAnimateOnAppear)
        return;
    
    CAKeyframeAnimation *bounceAnimation = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale"];
    
    bounceAnimation.duration = 0.4;
    bounceAnimation.delegate = self;
    
    bounceAnimation.values = [NSArray arrayWithObjects:
                              [NSNumber numberWithFloat:0.7f],
                              [NSNumber numberWithFloat:1.2f],
                              [NSNumber numberWithFloat:0.9f],
                              [NSNumber numberWithFloat:1.0f],
                              nil];
    
    bounceAnimation.keyTimes = [NSArray arrayWithObjects:
                                [NSNumber numberWithFloat:0.0f],
                                [NSNumber numberWithFloat:0.334f],
                                [NSNumber numberWithFloat:0.666f],
                                [NSNumber numberWithFloat:1.0f],
                                nil];
    
    bounceAnimation.timingFunctions = [NSArray arrayWithObjects:
                                       [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
                                       [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
                                       [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
                                       nil];
    
    [self.view.layer addAnimation:bounceAnimation forKey:@"bounceAnimation"];
    
    CABasicAnimation *fadeAnimation = [CABasicAnimation animationWithKeyPath:@"opacity"];
    fadeAnimation.fromValue = [NSNumber numberWithFloat:0.0f];
    fadeAnimation.toValue = [NSNumber numberWithFloat:1.0f];
    fadeAnimation.duration = 0.1;
    [backgroundGradientView.layer addAnimation:fadeAnimation forKey:@"fadeAnimation"];
}

- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag {
    [self didMoveToParentViewController:self.parentViewController];
}

- (IBAction)close:(id)sender {
    //The close button
    [self dismissFromParentViewController];
}

- (void)dismissFromParentViewController {
    //Removes the nutrition view from the superview
    
    [self willMoveToParentViewController:nil];
    
    //Removes the view with or without animation
    if (!self.shouldAnimateOnDisappear) {
        [self.view removeFromSuperview];
        [backgroundGradientView removeFromSuperview];
        [self removeFromParentViewController];
        return;
    }
    else {
        [UIView animateWithDuration:0.4 animations:^ {
            CGRect rect = self.view.bounds;
            rect.origin.y += rect.size.height;
            self.view.frame = rect;
            backgroundGradientView.alpha = 0.0f;
        }
                         completion:^(BOOL finished) {
                             [self.view removeFromSuperview];
                             [backgroundGradientView removeFromSuperview];
                             [self removeFromParentViewController];
                         }];
    }
}

- (void)viewDidUnload {
    [super viewDidUnload];
    self->backgroundView = nil;
    self->carbDailyValueLabel = nil;
    self->fatDailyValueLabel = nil;
    NSLog(@"view did unload");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
