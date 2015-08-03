//
//  BlurView.h
//  BlurView
//
//  Created by 燕颖祥 on 15/8/3.
//  Copyright (c) 2015年 嗖嗖快跑. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface BlurView : UIView
- (instancetype)initWithFrame:(CGRect)frame SuperView:(UIView *)view;
@end

@interface UIView (Screenshot)
- (UIImage *)rn_screenshot;
@end

@interface UIImage (Blur)
-(UIImage *)rn_boxblurImageWithBlur:(CGFloat)blur exclusionPath:(UIBezierPath *)exclusionPath;
@end