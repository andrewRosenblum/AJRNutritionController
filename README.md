AJRNutritionController
======================

Created By Andrew Rosenblum, 2013

Twitter: [@AJRosenblum](https://twitter.com/AJRosenblum)

If you end up using this code in an app, please let me know.  I'd love to see how it's being used :)

About
------------------------

An Objective-C class to present an animated view with nutritional information. The view mimics the nutrition label seen on commercial goods.

This code is iOS 5 & 6 compatiable, storybaord and ARC Compatiable.

![My image](http://s3.amazonaws.com/cocoacontrols_production/ios_screens/1625/full.png?1360446212)


Using AJRNutritionController
------------------
To use `AJRNutritionController` first copy the following files into your project:
- `AJRNutritionViewController.h`
- `AJRNutritionViewController.m`
- `AJRNutritionViewController.xib`
- `AJRNutritionLabelCalculation.h`
- `AJRNutritionLabelCalculation.m`
- `AJRNutritionLabelView.h`
- `AJRNutritionLabelView.m`
- `AJRBackgroundDimmer.h`
- `AJRBackgroundDimmer.m`
- `CloseButton.png`
- `CloseButton@2x.png`

In addition, make sure your project includes the `QuartzCore` framework.

Then in the appropiate method, add the following to initalize the view:

    AJRNutritionViewController *controller = [[AJRNutritionViewController alloc] init];

Set the nutrition values as follows:

    controller.servingSize = @"12 fl oz. (1 Can)";
    controller.calories = 130;
    controller.fat = 5.5;
    controller.carbs = 35;
    controller.sugar = 12;
    controller.protein = 3.0;
    
Finally present the view:

    [controller presentInParentViewController:self];

Check out the included demo for an example


License
--------------
This code is published under BSD Simplified:


Copyright (c) 2013, Andrew Rosenblum
All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
Neither the name of the <ORGANIZATION> nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

