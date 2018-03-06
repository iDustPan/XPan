//
//  ViewController.m
//  XPan
//
//  Created by 徐攀 on 06/03/2018.
//  Copyright © 2018 com.borderXLab. All rights reserved.
//

#import "ViewController.h"
#import "TestView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    TestView *testView = [[TestView alloc] initWithFrame:CGRectMake(0, 0, 414, 300)];
    [self.view addSubview:testView];
}




@end
