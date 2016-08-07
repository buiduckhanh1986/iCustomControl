//
//  DemoSampleSlider.m
//  iCustomGUI
//
//  Created by Bui Duc Khanh on 7/19/16.
//  Copyright © 2016 Bui Duc Khanh. All rights reserved.
//

#import "DemoSampleSlider.h"
#import "SampleSlider.h"

@interface DemoSampleSlider ()

@end

@implementation DemoSampleSlider
{
    SampleSlider *slider;
    
    SampleSlider *rotateSlider;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"SliderDemoBackground"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    
    
    self.title = @"Sample Slider";
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    float frameWidth= self.view.bounds.size.width;
    
    slider = [[SampleSlider alloc] initWithFrame:CGRectMake((frameWidth/2.0 - 120), 20, 240, 36)];
    
    rotateSlider = [[SampleSlider alloc] initWithFrame:CGRectMake((frameWidth/2.0 - 100), 200, 200, 36)];
    rotateSlider.transform = CGAffineTransformMakeRotation(-M_PI/6.0);
    
    
    [self.view addSubview:slider];
    [self.view addSubview:rotateSlider];
}

@end
