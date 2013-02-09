//
//  ViewController.m
//  AJRNutritionControllerDemo
//
//  Created by Andrew Rosenblum on 2/9/13.
//  Copyright (c) 2013 On Tap Media. All rights reserved.
//

#import "ViewController.h"
#import "AJRNutritionViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)presentNutritionController:(id)sender {
    
    //Initalize the nutrition view
    AJRNutritionViewController *controller = [[AJRNutritionViewController alloc] init];
    
    //Set the various data values for the view
    controller.servingSize = @"12 fl oz. (1 Can)";
    controller.calories = 100;      //Type: int
    controller.fat = 5;             //Type: float
    controller.carbs = 35;          //Type: float
    controller.sugar = 12;          //Type: float
    controller.protein = 3;         //Type: float
    
    //Present the View
    [controller presentInParentViewController:self];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
