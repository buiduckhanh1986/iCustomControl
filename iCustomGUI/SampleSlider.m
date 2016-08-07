//
//  SampleSlider.m
//  iCustomGUI
//
//  Created by Bui Duc Khanh on 7/19/16.
//  Copyright © 2016 Bui Duc Khanh. All rights reserved.
//

#import "SampleSlider.h"

@interface SampleSlider ()

@end

@implementation SampleSlider

- (instancetype) initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    [self setThumbImage:[UIImage imageNamed:@"SliderDemoThumb"] forState:UIControlStateNormal];
    
    [self setMinimumValueImage:[UIImage imageNamed:@"SliderDemoMinValue"]];
    [self setMaximumValueImage:[UIImage imageNamed:@"SliderDemoMaxValue"]];
    
    UIEdgeInsets maxInset = UIEdgeInsetsMake(0, 0, 0, 10);
    UIImage* maxTrack = [[UIImage imageNamed: @"SliderDemoMaxTrack"] resizableImageWithCapInsets:maxInset];
    [self setMaximumTrackImage:maxTrack forState:UIControlStateNormal];
    //[self setMaximumTrackImage:[UIImage imageNamed: @"SliderDemoMaxTrack"] forState:UIControlStateNormal];
    
    UIEdgeInsets minInset = UIEdgeInsetsMake(0, 10, 0, 0);
    UIImage* minTrack = [[UIImage imageNamed: @"SliderDemoMinTrack"] resizableImageWithCapInsets:minInset];
    [self setMinimumTrackImage:minTrack forState:UIControlStateNormal];
    //[self setMinimumTrackImage:[UIImage imageNamed: @"SliderDemoMinTrack"] forState:UIControlStateNormal];
    
    return self;
}

@end
