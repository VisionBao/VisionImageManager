//
//  ScrollViewImageView.h
//  morePic
//
//  Created by Vision on 15/3/10.
//  Copyright (c) 2015年 Vision. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScrollViewImageView : UIView<UIScrollViewDelegate>

@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UIImageView *mainImageView;

@end
