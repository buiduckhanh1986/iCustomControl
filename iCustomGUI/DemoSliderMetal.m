//
//  DemoSliderMetal.m
//  iCustomGUI
//
//  Created by Bui Duc Khanh on 7/21/16.
//  Copyright © 2016 Bui Duc Khanh. All rights reserved.
//

#import "DemoSliderMetal.h"
#import "SliderMetal.h"

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@interface DemoSliderMetal ()

@end

@implementation DemoSliderMetal
{
    SliderMetal *slider;
    
    SliderMetal *rotateSlider;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = UIColorFromRGB(0xB0AB8D);
    
    
    self.title = @"Metal Slider";
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    float frameWidth= self.view.bounds.size.width;
    
    slider = [[SliderMetal alloc] initWithFrame:CGRectMake((frameWidth/2.0 - 100), 20, 200, 36)];
    
    rotateSlider = [[SliderMetal alloc] initWithFrame:CGRectMake((frameWidth/2.0 - 100), 200, 200, 36)];
    rotateSlider.transform = CGAffineTransformMakeRotation(-M_PI/6.0);
    
    
    [self.view addSubview:slider];
    [self.view addSubview:rotateSlider];
}

@end
