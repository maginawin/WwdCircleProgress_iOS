//
//  WWDCircleProgressView.m
//  WWDCircleProgress
//
//  Created by maginawin on 14-12-24.
//  Copyright (c) 2014年 mycj.wwd. All rights reserved.
//

#import "WWDCircleProgressView.h"

@implementation WWDCircleProgressView
CGFloat  topLineWidth;
CGFloat topLineAngle;
NSInteger topLineDirection;
UIColor* topLineColor;

- (id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        topLineWidth = 0;
        topLineAngle = 0;
        topLineDirection = 0;
        topLineColor = [UIColor redColor];
    }
    return self;
}


- (void)drawRect:(CGRect)rect{
    [self fromTopPointDrawCircleLine];
}

//从最右边的切点开始绘制圆
- (void)fromRightPointDrawCircle{
    CGFloat width = self.frame.size.width;
    CGFloat height = self.frame.size.height;
    CGFloat radius = width;
    if (width >= height) {
        radius = height;
    }
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    //圆的路径
    CGContextBeginPath(ctx); //开始定义路径
    
    //添加一段圆弧
    // 2:x 3:y 3:半径 4:开始角度 5:结束角度 6:0顺1逆
    //圆的最右边切点为0,最左边切点为M_PI,依此类推0到M_PI设置为0顺则会从最右边开始绘制一个圆
    CGContextAddArc(ctx, width / 2, height / 2, radius / 2, 0, M_PI, 0);
    //关闭路径 如果不关闭路径则可以绘制一个线段, 但不能填充
    CGContextClosePath(ctx);
    CGContextSetRGBStrokeColor(ctx, 1, 0, 0, 1); //设置绘制颜色
    CGContextSetRGBFillColor(ctx, 0, 0, 1, 1); //设置填充颜色
    CGContextSetLineWidth(ctx, 4); //设置线宽
    //    CGContextStrokePath(ctx); //绘制路径
    CGContextFillPath(ctx); //填充路径
}

//从顶点开始绘制圆或圆弧
- (void)fromTopPointDrawCircleLine{
    CGFloat width = self.frame.size.width;
    CGFloat height = self.frame.size.height;
    CGFloat radius = width;
    if (width > height) {
        radius = height;
    }
    radius = (radius - topLineWidth) / 2;
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextBeginPath(ctx);
    CGContextAddArc(ctx, width / 2, height / 2, radius, -M_PI / 2, (-M_PI / 2) + topLineAngle, topLineDirection);
    CGContextSetStrokeColorWithColor(ctx, [topLineColor CGColor]);
    CGContextSetLineWidth(ctx, topLineWidth);
//    CGContextClosePath(ctx);
    CGContextStrokePath(ctx);
}
- (void)setTopPointDrawCircleLineWidth:(CGFloat)lineWidth angle:(CGFloat)lineAngle direction:(NSInteger)lineDirection inColor:(UIColor*)lineColor{
    topLineWidth = lineWidth;
    topLineAngle = lineAngle;
    topLineDirection = lineDirection;
    topLineColor = lineColor;
    [self setNeedsDisplay];
}
@end
