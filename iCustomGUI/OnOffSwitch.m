//
//  OnOffSwitch.m
//  iCustomGUI
//
//  Created by Bui Duc Khanh on 7/14/16.
//  Copyright © 2016 Bui Duc Khanh. All rights reserved.
//

#import "OnOffSwitch.h"

@implementation OnOffSwitch
{
    UIButton *btnOn;
    UIButton *btnOff;
    float resize;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype) initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    // Tính tỉ lệ zoom ảnh
    float originalWidth= 2.0 * 69;
    float originalHeight= 60.0;
    
    float xResize = frame.size.width / originalWidth;
    float yResize = frame.size.height / originalHeight;
    
    if (xResize > yResize)
        resize = yResize;
    else
        resize = xResize;
    
    btnOn = [[UIButton alloc] initWithFrame:CGRectMake((frame.size.width - 2.0 * 69.0 * resize)/2.0, (frame.size.height - 60 * resize)/2.0, 69.0 * resize, 60.0 * resize)];
    btnOff = [[UIButton alloc] initWithFrame:CGRectMake(frame.size.width/2.0, (frame.size.height - 60 * resize)/2.0, 69.0 * resize, 60.0 * resize)];
    
    
    // Gắn các sự kiện touch up insize
    [btnOn addTarget:self action:@selector(pressOn) forControlEvents:UIControlEventTouchUpInside];
    [btnOff addTarget:self action:@selector(pressOff) forControlEvents:UIControlEventTouchUpInside];
    
    
    // Gán giá trị khởi tạo thiết lập ảnh
    self.value = true;
    
    // Addview
    
    [self addSubview:btnOn];
    [self addSubview:btnOff];
    
    return self;
}


// Khi ấn on
- (void) pressOn{
    self.value = true;
    
    // send event for all touch up inside event
    [self sendActionsForControlEvents:UIControlEventTouchUpInside];
}

// Khi ấn off
- (void) pressOff{
    self.value = false;
    
    // send event for all touch up inside event
    [self sendActionsForControlEvents:UIControlEventTouchUpInside];
}


// Thiết lập giá trị
- (void) setValue:(BOOL) value{
    BOOL oldVal= _value;
    
    UIImage* on;
    UIImage* off;
    
    _value = value;
    
    
    // Chọn ảnh ứng với giá trị
    if(_value)
    {
        on= [UIImage imageNamed:@"OnActive"];
        off= [UIImage imageNamed:@"OffActive"];
    }
    else
    {
        on= [UIImage imageNamed:@"OnInactive"];
        off= [UIImage imageNamed:@"OffInactive"];
    }
    
    // Resize ảnh nếu vùng hiển thị lớn hơn kích thước ảnh, nhỏ hơn thì hình như tự fit
    if(resize > 1)
    {
        on = [UIImage imageWithCGImage:[on CGImage]
                            scale:(1.0 /resize)
                      orientation:(on.imageOrientation)];
        
        off = [UIImage imageWithCGImage:[off CGImage]
                                 scale:(1.0 /resize)
                           orientation:(off.imageOrientation)];

    }

    // Gán ảnh
    [btnOn setImage:on forState:UIControlStateNormal];
    [btnOff setImage:off forState:UIControlStateNormal];
    
    // Chỉ raise value changed khi value changed thật
    if(oldVal != _value)
        [self sendActionsForControlEvents:UIControlEventValueChanged];
}

@end
