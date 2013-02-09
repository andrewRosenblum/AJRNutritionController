//
//  ViewController.m
//  AJRNutritionControllerDemo
//
//  Created by Andrew Rosenblum on 2/9/13.
//  Copyright (c) 2013 On Tap Media. All rights reserved.
//
//
//Copyright (c) 2013, Andrew Rosenblum All rights reserved.
//
//Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
//
//Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution. Neither the name of the nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission. THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


#import "ViewController.h"

//Import This file to get started
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
    
     /*
      *Optional Customizations
      *
      *controller.shouldDimBackground = YES;              //Default: YES
      *controllershouldAnimateOnAppear = YES;             //Default: YES
      *controller.shouldAnimateOnDisappear = YES;         //Default: YES
      *
      *By default, the user can perform a swipe gesture (in the downward direction)
      *to dismiss the popup
      *controller.allowSwipeToDismiss = YES;              //Default: YES
      */
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
