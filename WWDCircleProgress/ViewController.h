//
//  ViewController.h
//  WWDCircleProgress
//
//  Created by maginawin on 14-12-24.
//  Copyright (c) 2014年 mycj.wwd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *mView;
- (IBAction)addCircle:(id)sender;
- (IBAction)minusCircle:(id)sender;
@end

