//
//  BootLogic.m
//  TechmasterApp
//
//  Created by techmaster on 9/7/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

#import "BootLogic.h"
#import "MainScreen.h"


@implementation BootLogic
+ (void) boot: (UIWindow*) window
{
    MainScreen* mainScreen = [[MainScreen alloc] initWithStyle:UITableViewStyleGrouped];
    //--------- From this line, please customize your menu data -----------
    NSDictionary* control = @{SECTION: @"Controls", MENU: @[
                                    //@{TITLE: @"UISwitch", CLASS: @"DemoOnOffSwitch"}
                                   @{TITLE: @"Sample Slider", CLASS: @"DemoSampleSlider"}
                                    ,@{TITLE: @"Slider Task 01", CLASS: @"DemoSliderMetal"}
                                    ,@{TITLE: @"Slider Task 02", CLASS: @"DemoSliderCaption"}
                                    ,@{TITLE: @"Slider Task 03", CLASS: @"DemoSliderAudio"}
                          ]};
    /*NSDictionary* intermediate = @{SECTION: @"Intermediate", MENU: @[
                                    @{TITLE: @"Inter B", CLASS: @"InterB"}
                                  ]};*/
    
    
    mainScreen.menu = @[control];
    mainScreen.title = @"GUI Demo";
    mainScreen.about = @"This is demo app for KhanhBD custom view and control";
    //--------- End of customization -----------
    UINavigationController* nav = [[UINavigationController alloc] initWithRootViewController: mainScreen];
    
    window.rootViewController = nav;
}
@end
