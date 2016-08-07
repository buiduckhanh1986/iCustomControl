//
//  DemoSliderAudio.m
//  iCustomGUI
//
//  Created by Bui Duc Khanh on 7/21/16.
//  Copyright © 2016 Bui Duc Khanh. All rights reserved.
//

#import "DemoSliderAudio.h"
#import "SliderAudio.h"

@interface DemoSliderAudio ()

@end

@implementation DemoSliderAudio
{
    SliderAudio *slider;
    
    SliderAudio *rotateSlider1;
    
    SliderAudio *rotateSlider2;
    SliderAudio *rotateSlider3;
    SliderAudio *rotateSlider4;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"SliderAudioDemoBackground"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    
    
    self.title = @"Slider Audio";
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    float frameWidth= self.view.bounds.size.width;
    
    slider = [[SliderAudio alloc] initWithFrame:CGRectMake((frameWidth/2.0 - 100), 20, 200, 36)];
    
    rotateSlider1 = [[SliderAudio alloc] initWithFrame:CGRectMake(-70, 200, 300, 36)];
    rotateSlider1.transform = CGAffineTransformMakeRotation(-M_PI/2.0);
    rotateSlider1.value = 0.5;
    
    rotateSlider2 = [[SliderAudio alloc] initWithFrame:CGRectMake(54, 200, 300, 36)];
    rotateSlider2.transform = CGAffineTransformMakeRotation(-M_PI/2.0);
    rotateSlider2.value = 0.5;
    
    rotateSlider3 = [[SliderAudio alloc] initWithFrame:CGRectMake(85, 200, 300, 36)];
    rotateSlider3.transform = CGAffineTransformMakeRotation(-M_PI/2.0);
    rotateSlider3.value = 0.5;
    
    rotateSlider4 = [[SliderAudio alloc] initWithFrame:CGRectMake(116, 200, 300, 36)];
    rotateSlider4.transform = CGAffineTransformMakeRotation(-M_PI/2.0);
    rotateSlider4.value = 0.5;
    
    
    
    [self.view addSubview:slider];
    [self.view addSubview:rotateSlider1];
    
    [self.view addSubview:rotateSlider2];
    [self.view addSubview:rotateSlider3];
    [self.view addSubview:rotateSlider4];
}
@end
