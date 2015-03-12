//
//  ViewController.m
//  VisionImageManager
//
//  Created by Vision on 15-3-13.
//  Copyright (c) 2015年 Vision. All rights reserved.
//

#import "ViewController.h"
#import "ZoomRotatePanImageView.h"
#import "ScrollViewImageView.h"
#import "MorePicView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImage *image1 = [UIImage imageNamed:@"0"];
    UIImage *image2 = [UIImage imageNamed:@"0"];
    UIImage *image3 = [UIImage imageNamed:@"0"];
    UIImage *image4 = [UIImage imageNamed:@"0"];
    UIImage *image5 = [UIImage imageNamed:@"0"];
    UIImage *image6 = [UIImage imageNamed:@"0"];
    NSArray *arr = [NSArray arrayWithObjects:image1, image2 ,image3, image4,nil];
    MorePicView *picView = [[MorePicView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.width) andPhotoArray:arr andPhotoMode:VISION_FIVE_Photo_Mode3];
    [self.view addSubview:picView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
