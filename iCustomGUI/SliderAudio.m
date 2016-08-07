//
//  SliderAudio.m
//  iCustomGUI
//
//  Created by Bui Duc Khanh on 7/21/16.
//  Copyright © 2016 Bui Duc Khanh. All rights reserved.
//

#import "SliderAudio.h"

@implementation SliderAudio

- (instancetype) initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    [self setThumbImage:[UIImage imageNamed:@"SliderAudioThumb"] forState:UIControlStateNormal];
    
    [self setMinimumValueImage:[UIImage imageNamed:@"SliderAudioMinValue"]];
    [self setMaximumValueImage:[UIImage imageNamed:@"SliderAudioMaxValue"]];
    
    UIEdgeInsets maxInset = UIEdgeInsetsMake(0, 0, 0, 0);
    UIImage* maxTrack = [[UIImage imageNamed: @"SliderAudioMaxTrack"] resizableImageWithCapInsets:maxInset];
    [self setMaximumTrackImage:maxTrack forState:UIControlStateNormal];
    
    
    UIEdgeInsets minInset = UIEdgeInsetsMake(0, 0, 0, 0);
    UIImage* minTrack = [[UIImage imageNamed: @"SliderAudioMinTrack"] resizableImageWithCapInsets:minInset];
    [self setMinimumTrackImage:minTrack forState:UIControlStateNormal];
    
    return self;
}

- (CGRect)maximumValueImageRectForBounds:(CGRect)bounds
{
    return CGRectMake(bounds.origin.x + bounds.size.width - 20, bounds.origin.y + 2, 7, 33);
}

- (CGRect)minimumValueImageRectForBounds:(CGRect)bounds
{
    return CGRectMake(bounds.origin.x + 15, bounds.origin.y + 2, 5, 33);
}
@end
