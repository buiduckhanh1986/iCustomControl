//
//  DemoOnOffSwitch.m
//  iCustomGUI
//
//  Created by Bui Duc Khanh on 7/14/16.
//  Copyright © 2016 Bui Duc Khanh. All rights reserved.
//

#import "DemoOnOffSwitch.h"
#import "OnOffSwitch.h"

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]



@interface DemoOnOffSwitch ()

@end

@implementation DemoOnOffSwitch
{
    OnOffSwitch *btnSwitchSmall;
    
    OnOffSwitch *btnSwitch;
    
    OnOffSwitch *btnSwitchBig;
    
    OnOffSwitch *btnSwitchRotate;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = UIColorFromRGB(0xF0F0F0);
    
    self.title = @"ON OFF Switch";
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    float frameWidth= self.view.bounds.size.width;
    
    
    btnSwitchSmall = [[OnOffSwitch alloc] initWithFrame:CGRectMake((frameWidth/2.0 - 46), 5, 92, 40)];
    
    btnSwitch = [[OnOffSwitch alloc] initWithFrame:CGRectMake((frameWidth/2.0 - 69), 65, 138, 60)];
    
    btnSwitchBig = [[OnOffSwitch alloc] initWithFrame:CGRectMake((frameWidth/2.0 - 92), 155, 184, 80)];
    
    btnSwitchRotate = [[OnOffSwitch alloc] initWithFrame:CGRectMake((frameWidth/2.0 - 69), 350, 138, 60)];
    btnSwitchRotate.transform = CGAffineTransformMakeRotation(-M_PI/6.0);
    
    
    // Touch up inside event
    [btnSwitchSmall addTarget:self action:@selector(onclick) forControlEvents:UIControlEventTouchUpInside];
    [btnSwitch addTarget:self action:@selector(onclick) forControlEvents:UIControlEventTouchUpInside];
    [btnSwitchBig addTarget:self action:@selector(onclick) forControlEvents:UIControlEventTouchUpInside];
    [btnSwitchRotate addTarget:self action:@selector(onclick) forControlEvents:UIControlEventTouchUpInside];
    
    // Value changed event
    [btnSwitchSmall addTarget:self action:@selector(onValueChange) forControlEvents:UIControlEventValueChanged];
    [btnSwitch addTarget:self action:@selector(onValueChange) forControlEvents:UIControlEventValueChanged];
    [btnSwitchBig addTarget:self action:@selector(onValueChange) forControlEvents:UIControlEventValueChanged];
    [btnSwitchRotate addTarget:self action:@selector(onValueChange) forControlEvents:UIControlEventValueChanged];
    
    
    [self.view addSubview:btnSwitchSmall];
    [self.view addSubview:btnSwitch];
    [self.view addSubview:btnSwitchBig];
    [self.view addSubview:btnSwitchRotate];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (void) onclick{
    NSLog(@"Touch UP Inside Event fire");
}


- (void) onValueChange{
    NSLog(@"Value change event fire");
}

@end
