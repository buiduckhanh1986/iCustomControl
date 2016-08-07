//
//  DemoSliderCaption.m
//  iCustomGUI
//
//  Created by Bui Duc Khanh on 7/21/16.
//  Copyright © 2016 Bui Duc Khanh. All rights reserved.
//

#import "DemoSliderCaption.h"
#import "SliderCaption.h"

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@interface DemoSliderCaption ()

@end

@implementation DemoSliderCaption
{
    SliderCaption *slider;
    
    SliderCaption *rotateSlider;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = UIColorFromRGB(0x04738F);
    
    
    self.title = @"Slider Caption";
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    float frameWidth= self.view.bounds.size.width;
    
    slider = [[SliderCaption alloc] initWithFrame:CGRectMake((frameWidth/2.0 - 100), 60, 200, 36)];
    
    rotateSlider = [[SliderCaption alloc] initWithFrame:CGRectMake((frameWidth/2.0 - 100), 250, 200, 36)];
    rotateSlider.transform = CGAffineTransformMakeRotation(-M_PI/6.0);
    
    
    [self.view addSubview:slider];
    [self.view addSubview:rotateSlider];
    
    
    [slider initializeCaption];
    [rotateSlider initializeCaption];
}
@end
