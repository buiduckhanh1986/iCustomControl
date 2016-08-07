//
//  SliderMetal.m
//  iCustomGUI
//
//  Created by Bui Duc Khanh on 7/21/16.
//  Copyright © 2016 Bui Duc Khanh. All rights reserved.
//

#import "SliderMetal.h"

@implementation SliderMetal

- (instancetype) initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    [self setThumbImage:[UIImage imageNamed:@"SliderMetalThumb"] forState:UIControlStateNormal];
    
    [self setMaximumValueImage:[UIImage imageNamed:@"SliderMetalMaxValue"]];
    //[self setMaximumValueImage:[UIImage imageNamed:@"SliderMetalMaxTrack"]];
    [self setMinimumValueImage:[UIImage imageNamed:@"SliderMetalMinValue"]];
    //[self setMinimumValueImage:[UIImage imageNamed:@"SliderMetalMinTrack"]];
    
    /*
    UIEdgeInsets maxInset = UIEdgeInsetsMake(0, 0, 0, 17);
    UIImage* maxTrack = [[UIImage imageNamed: @"SliderMetalMaxTrack"] resizableImageWithCapInsets:maxInset];
    [self setMaximumTrackImage:maxTrack forState:UIControlStateNormal];
    
    
    UIEdgeInsets minInset = UIEdgeInsetsMake(0, 17, 0, 0);
    UIImage* minTrack = [[UIImage imageNamed: @"SliderMetalMinTrack"] resizableImageWithCapInsets:minInset];
     [self setMinimumTrackImage:minTrack forState:UIControlStateNormal];
     */
    
    [self setMinimumTrackImage:[UIImage imageNamed: @"SliderMetalTrack"] forState:UIControlStateNormal];
    [self setMaximumTrackImage:[UIImage imageNamed: @"SliderMetalTrack"] forState:UIControlStateNormal];
    
    
    
    return self;
}

- (CGRect)maximumValueImageRectForBounds:(CGRect)bounds
{
    return CGRectMake(bounds.origin.x + bounds.size.width - 36, bounds.origin.y + 1, 17, 34);
}

- (CGRect)minimumValueImageRectForBounds:(CGRect)bounds
{
    return CGRectMake(bounds.origin.x + 20, bounds.origin.y + 1, 17, 34);
}
@end
