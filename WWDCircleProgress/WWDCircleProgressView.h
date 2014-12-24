//
//  WWDCircleProgressView.h
//  WWDCircleProgress
//
//  Created by maginawin on 14-12-24.
//  Copyright (c) 2014年 mycj.wwd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WWDCircleProgressView : UIView
@property (nonatomic) CGFloat textLine;
- (void)setTopPointDrawCircleLineWidth:(CGFloat)lineWidth angle:(CGFloat)lineAngle direction:(NSInteger)lineDirection inColor:(UIColor*)lineColor;
@end
