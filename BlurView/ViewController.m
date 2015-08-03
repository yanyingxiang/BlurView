//
//  ViewController.m
//  BlurView
//
//  Created by 燕颖祥 on 15/8/3.
//  Copyright (c) 2015年 嗖嗖快跑. All rights reserved.
//

#import "ViewController.h"
#import "BlurView.h"
#import <BaiduMapAPI/BMapKit.h>

@interface ViewController ()<BMKMapViewDelegate>

@property (weak, nonatomic) IBOutlet BMKMapView *mapView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _mapView.delegate = self;
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Blur" style:UIBarButtonItemStylePlain target:self action:@selector(showBlurView)];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Remove" style:UIBarButtonItemStylePlain target:self action:@selector(removeBlurView)];
}

- (void)showBlurView
{
    UIView *blurView = [[BlurView alloc] initWithFrame:CGRectMake(0, 0, 375, 667) SuperView:_mapView];
    [self.view addSubview:blurView];
}

- (void)removeBlurView
{
    for (UIView *view in self.view.subviews)
    {
        if ([view isKindOfClass:[BlurView class]])
        {
            [view removeFromSuperview];
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
