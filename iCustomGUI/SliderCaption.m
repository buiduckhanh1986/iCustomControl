//
//  SliderCaption.m
//  iCustomGUI
//
//  Created by Bui Duc Khanh on 7/21/16.
//  Copyright © 2016 Bui Duc Khanh. All rights reserved.
//

#import "SliderCaption.h"

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@implementation SliderCaption

- (instancetype) initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    [self setThumbImage:[UIImage imageNamed:@"SliderCaptionCombinedCaption"] forState:UIControlStateNormal];
    
    //[self setMaximumValueImage:[UIImage imageNamed:@"SliderCaptionMaxValue"]];
    //[self setMinimumValueImage:[UIImage imageNamed:@"SliderCaptionMinValue"]];
    
    UIEdgeInsets maxInset = UIEdgeInsetsMake(0, 0, 0, 4);
    UIImage* maxTrack = [[UIImage imageNamed: @"SliderCaptionMaxTrack"] resizableImageWithCapInsets:maxInset];
    [self setMaximumTrackImage:maxTrack forState:UIControlStateNormal];
    
    
    UIEdgeInsets minInset = UIEdgeInsetsMake(0, 6, 0, 0);
    UIImage* minTrack = [[UIImage imageNamed: @"SliderCaptionMinTrack"] resizableImageWithCapInsets:minInset];
    [self setMinimumTrackImage:minTrack forState:UIControlStateNormal];
    
    
    return self;
}

- (CGRect)thumbRectForBounds:(CGRect)bounds
                   trackRect:(CGRect)rect
                       value:(float)value
{
    CGRect original = [super thumbRectForBounds:bounds trackRect:rect value:value];
    
    float thumbOffsetToApplyOnEachSide = original.size.width / 2.0;
    
    float minOffsetToAdd = -thumbOffsetToApplyOnEachSide;
    float maxOffsetToAdd = thumbOffsetToApplyOnEachSide;
    float offsetForValue = minOffsetToAdd + (maxOffsetToAdd - minOffsetToAdd) * value;
    
    return CGRectMake(original.origin.x + offsetForValue, original.origin.y, original.size.width, original.size.height);
}

-(void) showCaption
{
    UIImage* image = [UIImage imageNamed:@"SliderCaptionCombinedCaption"];
    NSString *caption = [NSString stringWithFormat:@"%.2f", self.value];
    
    UIGraphicsBeginImageContextWithOptions(image.size, NO, 0.0);
    
    [image drawInRect:CGRectMake(0,0,image.size.width,image.size.height)];
    
    CGRect rect = CGRectMake(15, 8, 30, 15);
    
    //[caption drawInRect:rect withAttributes:nil];
    [caption drawInRect:rect withAttributes:@{NSFontAttributeName:[UIFont fontWithName:@"Arial" size:12], NSForegroundColorAttributeName:UIColorFromRGB(0x005E6C) }];
    
    
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    [self setThumbImage:newImage forState:UIControlStateNormal];
}
@end
