//
//  TestView.m
//  XPan
//
//  Created by 徐攀 on 06/03/2018.
//  Copyright © 2018 com.borderXLab. All rights reserved.
//

#import "TestView.h"

@implementation TestView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        
        UIView *subView1 = [UIView new];
        subView1.backgroundColor = [UIColor grayColor];
        subView1.frame = CGRectMake(20, 20, 200, 200);
        [self addSubview:subView1];
        
        UIView *subView2 = [UIView new];
        subView2.backgroundColor = [UIColor redColor];
        subView2.frame = CGRectMake(0, 0, 50, 50);
        [subView1 addSubview:subView2];
        
        subView1.bounds = CGRectMake(-20, -20, 200, 200);
        
        NSLog(@"subView1, frame:%@", NSStringFromCGRect(subView1.frame));
        
        
        NSLog(@"Transform前----");
        NSLog(@"subView2, bounds: %@", NSStringFromCGRect(subView2.bounds));
        NSLog(@"subView2, frame: %@", NSStringFromCGRect(subView2.frame));
        
//        subView2.transform = CGAffineTransformMakeTranslation(10, 10);
        subView2.transform = CGAffineTransformMakeRotation(M_PI_4);
        
        NSLog(@"Transform后----");
        NSLog(@"subView2, bounds: %@", NSStringFromCGRect(subView2.bounds));
        NSLog(@"subView2, frame: %@", NSStringFromCGRect(subView2.frame));
        
        /*
         frame是针对父控件的坐标系统来布局；
         bounds是针对自身的坐标系统来布局；
         通过修改父控件的bounds来修改标父控件的坐标系统，可使子控件的位置发生变化，这就是UIScrollView的原理；
         transform后的控件，frame会变化，bounds不会变化，因为bounds是针对自身坐标系的，transform自身的坐标系统会跟着变化。
         */
        
    }
    return self;
}

@end
