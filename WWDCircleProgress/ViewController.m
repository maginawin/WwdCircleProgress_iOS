//
//  ViewController.m
//  WWDCircleProgress
//
//  Created by maginawin on 14-12-24.
//  Copyright (c) 2014年 mycj.wwd. All rights reserved.
//

#import "ViewController.h"
#import "WWDCircleProgressView.h"
@interface ViewController ()

@end

@implementation ViewController
CGFloat circleAngle;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    circleAngle = 0;
    [(WWDCircleProgressView*)_mView setTopPointDrawCircleLineWidth:8 angle:0 direction:0 inColor:[UIColor blueColor]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addCircle:(id)sender {
    circleAngle += 0.1f;
    [(WWDCircleProgressView*)_mView setTopPointDrawCircleLineWidth:8 angle:circleAngle direction:0 inColor:[UIColor blueColor]];
}

- (IBAction)minusCircle:(id)sender {
    circleAngle -= 0.1f;
    [(WWDCircleProgressView*)_mView setTopPointDrawCircleLineWidth:8 angle:circleAngle direction:0 inColor:[UIColor blueColor]];
}
@end
