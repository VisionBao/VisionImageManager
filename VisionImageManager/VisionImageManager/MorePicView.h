//
//  MorePicView.h
//  morePic
//
//  Created by Vision on 15/3/10.
//  Copyright (c) 2015年 Vision. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_OPTIONS(NSInteger, VISION_Photo_Mode){
    VISION_Two_Photo,
    VISION_Three_Photo,
    VISION_Four_Photo,
    VISION_Five_Photo,
    VISION_Six_Photo
    
};

typedef NS_ENUM(NSInteger, VISION_TWO_Photo_Mode){
    VISION_TWO_Photo_Mode1,
    VISION_TWO_Photo_Mode2,
    VISION_TWO_Photo_Mode3
    
};

typedef NS_ENUM(NSInteger, VISION_THREE_Photo_Mode){
    VISION_THREE_Photo_Mode1,
    VISION_THREE_Photo_Mode2,
    VISION_THREE_Photo_Mode3,
    VISION_THREE_Photo_Mode4,
    VISION_THREE_Photo_Mode5
};

typedef NS_ENUM(NSInteger, VISION_FOUR_Photo_Mode){
    VISION_FOUR_Photo_Mode1,
    VISION_FOUR_Photo_Mode2,
    VISION_FOUR_Photo_Mode3,
    VISION_FOUR_Photo_Mode4,
    VISION_FOUR_Photo_Mode5,
    VISION_FOUR_Photo_Mode6,
    VISION_FOUR_Photo_Mode7
};

typedef NS_ENUM(NSInteger, VISION_FIVE_Photo_Mode){
    VISION_FIVE_Photo_Mode1,
    VISION_FIVE_Photo_Mode2,
    VISION_FIVE_Photo_Mode3,
    VISION_FIVE_Photo_Mode4,
    VISION_FIVE_Photo_Mode5,
    VISION_FIVE_Photo_Mode6
};

typedef NS_ENUM(NSInteger, VISION_SIX_Photo_Mode){
    VISION_SIX_Photo_Mode1,
    VISION_SIX_Photo_Mode2,
    VISION_SIX_Photo_Mode3,
    VISION_SIX_Photo_Mode4
};

@interface MorePicView : UIView

@property (nonatomic, assign)VISION_Photo_Mode * photoMode;

@property (nonatomic, assign)VISION_TWO_Photo_Mode *twoPhotoMode;
@property (nonatomic, assign)VISION_THREE_Photo_Mode *threePhotoMode;
@property (nonatomic, assign)VISION_FOUR_Photo_Mode *fourPhotoMode;
@property (nonatomic, assign)VISION_FIVE_Photo_Mode *fivePhotoMode;
@property (nonatomic, assign)VISION_SIX_Photo_Mode *sixPhotoMode;

@property (nonatomic, strong) NSArray *picArr;

- (id)initWithFrame:(CGRect)frame andPhotoArray:(NSArray *)photoArr andPhotoMode:(NSInteger)photoMode;

@end
