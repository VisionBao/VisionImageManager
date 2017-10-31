//
//  MorePicView.m
//  morePic
//
//  Created by Vision on 15/3/10.
//  Copyright (c) 2015年 Vision. All rights reserved.
//

#import "MorePicView.h"
#import "ScrollViewImageView.h"

#define VIEW_WIDTH  self.frame.size.width
#define VIEW_HEIGHT self.frame.size.height
#define VIEW_WIDTH_2 self.frame.size.width / 2
#define VIEW_HEIGHT_2 self.frame.size.height / 2
#define VIEW_WIDTH_3 self.frame.size.width / 3
#define VIEW_HEIGHT_3 self.frame.size.height / 3
#define VIEW_WIDTH_4 self.frame.size.width / 4
#define VIEW_HEIGHT_4 self.frame.size.height / 4

@interface MorePicView ()

@end

@implementation MorePicView

- (id)initWithFrame:(CGRect)frame andPhotoArray:(NSArray *)photoArr andPhotoMode:(NSInteger)photoMode
{
    self = [super initWithFrame:frame];
    if (self) {
        switch ([photoArr count] - 2) {
            case VISION_Two_Photo:
                switch (photoMode) {
                    case VISION_TWO_Photo_Mode1:
                        [self creatScroolViewWithFrame:CGRectMake(0, 0, VIEW_WIDTH_2, VIEW_HEIGHT) andPhoto:photoArr[0]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_2, 0, VIEW_WIDTH_2, VIEW_HEIGHT) andPhoto:photoArr[1]];
                        break;
                    case VISION_TWO_Photo_Mode2:
                        [self creatScroolViewWithFrame:CGRectMake(0, 0, VIEW_WIDTH, VIEW_HEIGHT_2) andPhoto:photoArr[0]];
                        [self creatScroolViewWithFrame:CGRectMake(0, VIEW_HEIGHT_2, VIEW_WIDTH, VIEW_HEIGHT_2) andPhoto:photoArr[1]];
                        
                        break;
                    case VISION_TWO_Photo_Mode3:
                        [self creatScroolViewWithFrame:CGRectMake(0, 0, VIEW_WIDTH, VIEW_HEIGHT)  andPhoto:photoArr[0]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_2,VIEW_HEIGHT_2 , VIEW_WIDTH_2, VIEW_HEIGHT_2)  andPhoto:photoArr[1]];
                    default:
                        break;
                }
                break;
            case VISION_Three_Photo:
                switch (photoMode) {
                    case VISION_THREE_Photo_Mode1:
                        [self creatScroolViewWithFrame:CGRectMake(0, 0, VIEW_WIDTH_2 ,VIEW_HEIGHT )  andPhoto:photoArr[0]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_2, 0, VIEW_WIDTH_2, VIEW_HEIGHT_2)  andPhoto:photoArr[1]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_2,VIEW_HEIGHT_2 , VIEW_WIDTH_2, VIEW_HEIGHT_2)  andPhoto:photoArr[2]];
                        break;
                    case VISION_THREE_Photo_Mode2:
                        [self creatScroolViewWithFrame:CGRectMake(0, 0, VIEW_WIDTH_2, VIEW_HEIGHT_2)  andPhoto:photoArr[0]];
                        [self creatScroolViewWithFrame:CGRectMake(0, VIEW_HEIGHT_2, VIEW_WIDTH_2, VIEW_HEIGHT_2)  andPhoto:photoArr[1]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_2, 0, VIEW_WIDTH_2, VIEW_WIDTH)  andPhoto:photoArr[2]];
                        
                        break;
                    case VISION_THREE_Photo_Mode3:
                        [self creatScroolViewWithFrame:CGRectMake(0, 0, VIEW_WIDTH , VIEW_HEIGHT_3 * 2)  andPhoto:photoArr[0]];
                        [self creatScroolViewWithFrame:CGRectMake(0, VIEW_HEIGHT_3 * 2, VIEW_WIDTH_3 * 2, VIEW_HEIGHT_3 )  andPhoto:photoArr[1]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_3 * 2, VIEW_HEIGHT_3 * 2, VIEW_WIDTH_3, VIEW_HEIGHT_3)  andPhoto:photoArr[2]];
                        break;
                    case VISION_THREE_Photo_Mode4:
                        [self creatScroolViewWithFrame:CGRectMake(0, 0, VIEW_WIDTH , VIEW_HEIGHT_3 * 2)  andPhoto:photoArr[0]];
                        [self creatScroolViewWithFrame:CGRectMake(0, VIEW_HEIGHT_3 * 2, VIEW_WIDTH_3 , VIEW_HEIGHT_3 )  andPhoto:photoArr[1]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_3 , VIEW_HEIGHT_3 * 2, VIEW_WIDTH_3 * 2, VIEW_HEIGHT_3)  andPhoto:photoArr[2]];
                        break;
                    case VISION_THREE_Photo_Mode5:
                        [self creatScroolViewWithFrame:CGRectMake(0, 0, VIEW_WIDTH_3 , VIEW_HEIGHT_3 )  andPhoto:photoArr[0]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_3, 0, VIEW_WIDTH_3 * 2 , VIEW_HEIGHT_3 )  andPhoto:photoArr[1]];
                        [self creatScroolViewWithFrame:CGRectMake(0, VIEW_HEIGHT_3, VIEW_WIDTH, VIEW_HEIGHT_3 * 2)  andPhoto:photoArr[2]];
                        break;
                        
                    default:
                        break;
                }
                break;
            case VISION_Four_Photo:
                switch (photoMode) {
                    case VISION_FOUR_Photo_Mode1:
                        [self creatScroolViewWithFrame:CGRectMake(0, 0, VIEW_WIDTH_2, VIEW_HEIGHT_2)  andPhoto:photoArr[0]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_2, 0, VIEW_WIDTH_2, VIEW_HEIGHT_2)  andPhoto:photoArr[1]];
                        [self creatScroolViewWithFrame:CGRectMake(0, VIEW_HEIGHT_2, VIEW_WIDTH_2, VIEW_HEIGHT_2)  andPhoto:photoArr[2]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_2, VIEW_HEIGHT_2, VIEW_WIDTH_2, VIEW_HEIGHT_2)  andPhoto:photoArr[3]];
                        break;
                    case VISION_FOUR_Photo_Mode2:
                        [self creatScroolViewWithFrame:CGRectMake(0, 0, VIEW_WIDTH_2, VIEW_HEIGHT)  andPhoto:photoArr[0]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_2, 0, VIEW_WIDTH_2, VIEW_HEIGHT_3)  andPhoto:photoArr[1]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_2, VIEW_HEIGHT_3,VIEW_WIDTH_2, VIEW_HEIGHT_3)  andPhoto:photoArr[2]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_2, VIEW_HEIGHT_3 * 2, VIEW_WIDTH_2, VIEW_HEIGHT_3)  andPhoto:photoArr[3]];
                        break;
                    case VISION_FOUR_Photo_Mode3:
                        [self creatScroolViewWithFrame:CGRectMake(0, 0, VIEW_WIDTH_3 * 2, VIEW_HEIGHT_2)  andPhoto:photoArr[0]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_3 * 2, 0, VIEW_HEIGHT_3, VIEW_HEIGHT_2)  andPhoto:photoArr[1]];
                        [self creatScroolViewWithFrame:CGRectMake(0, VIEW_HEIGHT_2, VIEW_WIDTH_3, VIEW_HEIGHT_2)  andPhoto:photoArr[2]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_3, VIEW_HEIGHT_2, VIEW_WIDTH_3 * 2, VIEW_HEIGHT_2)  andPhoto:photoArr[3]];
                        break;
                    case VISION_FOUR_Photo_Mode4:
                        [self creatScroolViewWithFrame:CGRectMake(0, 0, VIEW_WIDTH_3, VIEW_HEIGHT_2)  andPhoto:photoArr[0]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_3, 0,VIEW_WIDTH_3 * 2, VIEW_HEIGHT_2)  andPhoto:photoArr[1]];
                        [self creatScroolViewWithFrame:CGRectMake(0, VIEW_HEIGHT_2,VIEW_WIDTH_3 * 2, VIEW_HEIGHT_2)  andPhoto:photoArr[2]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_3 * 2, VIEW_HEIGHT_2, VIEW_WIDTH_3, VIEW_HEIGHT_2)  andPhoto:photoArr[3]];
                        break;
                    case VISION_FOUR_Photo_Mode5:
                        [self creatScroolViewWithFrame:CGRectMake(0, 0, VIEW_WIDTH_2, VIEW_HEIGHT_3)  andPhoto:photoArr[0]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_2, 0, VIEW_WIDTH_2, VIEW_HEIGHT_3 * 2)  andPhoto:photoArr[1]];
                        [self creatScroolViewWithFrame:CGRectMake(0, VIEW_HEIGHT_3, VIEW_WIDTH_2, VIEW_HEIGHT_3 * 2)  andPhoto:photoArr[2]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_2, VIEW_HEIGHT_3 * 2,VIEW_WIDTH_2, VIEW_HEIGHT_3)  andPhoto:photoArr[3]];
                        break;
                    case VISION_FOUR_Photo_Mode6:
                        [self creatScroolViewWithFrame:CGRectMake(0, 0,VIEW_WIDTH_2, VIEW_HEIGHT_3 * 2 )  andPhoto:photoArr[0]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_2, 0, VIEW_WIDTH_2, VIEW_HEIGHT_3)  andPhoto:photoArr[1]];
                        [self creatScroolViewWithFrame:CGRectMake(0, VIEW_HEIGHT_3 * 2,VIEW_WIDTH_2, VIEW_HEIGHT_3)  andPhoto:photoArr[2]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_2, VIEW_HEIGHT_3,VIEW_WIDTH_2, VIEW_HEIGHT_3 * 2)  andPhoto:photoArr[3]];
                        break;
                    case VISION_FOUR_Photo_Mode7:
                        [self creatScroolViewWithFrame:CGRectMake(0, 0, VIEW_WIDTH_3, VIEW_WIDTH_3)  andPhoto:photoArr[0]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_3, 0, VIEW_WIDTH_3 * 2, VIEW_HEIGHT_3)  andPhoto:photoArr[1]];
                        [self creatScroolViewWithFrame:CGRectMake(0, VIEW_HEIGHT_3, VIEW_WIDTH_3, VIEW_WIDTH_3 * 2)  andPhoto:photoArr[2]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_3, VIEW_HEIGHT_3 , VIEW_WIDTH_3 * 2, VIEW_HEIGHT_3 * 2)  andPhoto:photoArr[3]];
                        break;
                    default:
                        break;
                }

                break;
                
            case VISION_Five_Photo:
                switch (photoMode) {
                    case VISION_FIVE_Photo_Mode1:
                        [self creatScroolViewWithFrame:CGRectMake(0, 0, VIEW_WIDTH_3, VIEW_HEIGHT_2)  andPhoto:photoArr[0]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_3, 0, VIEW_WIDTH_3, VIEW_HEIGHT_2 )  andPhoto:photoArr[1]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_3 * 2, 0,VIEW_WIDTH_3, VIEW_HEIGHT_2)  andPhoto:photoArr[2]];
                        [self creatScroolViewWithFrame:CGRectMake(0, VIEW_HEIGHT_2,VIEW_WIDTH_2, VIEW_HEIGHT_2)  andPhoto:photoArr[3]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_2, VIEW_HEIGHT_2 ,VIEW_WIDTH_2, VIEW_HEIGHT_2 )  andPhoto:photoArr[4]];
                        break;
                    case VISION_FIVE_Photo_Mode2:
                        [self creatScroolViewWithFrame:CGRectMake(0, 0, VIEW_WIDTH_2, VIEW_HEIGHT_3)  andPhoto:photoArr[0]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_2, 0, VIEW_WIDTH_2, VIEW_HEIGHT_2)  andPhoto:photoArr[1]];
                        [self creatScroolViewWithFrame:CGRectMake(0, VIEW_HEIGHT_3, VIEW_WIDTH_2, VIEW_HEIGHT_3 )  andPhoto:photoArr[2]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_2, VIEW_HEIGHT_2 , VIEW_WIDTH_2, VIEW_HEIGHT_2)  andPhoto:photoArr[3]];
                        [self creatScroolViewWithFrame:CGRectMake(0, VIEW_HEIGHT_3 * 2, VIEW_WIDTH_2, VIEW_HEIGHT_3 )  andPhoto:photoArr[4]];
                        break;
                    case VISION_FIVE_Photo_Mode3:
                        [self creatScroolViewWithFrame:CGRectMake(0, 0, VIEW_WIDTH_4 * 3, VIEW_HEIGHT)  andPhoto:photoArr[0]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_4 * 3, 0, VIEW_WIDTH_4, VIEW_HEIGHT_4)  andPhoto:photoArr[1]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_4 * 3, VIEW_HEIGHT_4, VIEW_WIDTH_4, VIEW_HEIGHT_4)  andPhoto:photoArr[2]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_4 * 3, VIEW_HEIGHT_4 * 2, VIEW_WIDTH_4, VIEW_HEIGHT_4)  andPhoto:photoArr[3]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_4 * 3, VIEW_HEIGHT_4 * 3, VIEW_WIDTH_4, VIEW_HEIGHT_4)  andPhoto:photoArr[4]];
                            break;
                    case VISION_FIVE_Photo_Mode4:
                        [self creatScroolViewWithFrame:CGRectMake(0, 0, VIEW_WIDTH_3 * 2, VIEW_HEIGHT_3 * 2)  andPhoto:photoArr[0]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_3 * 2, 0, VIEW_WIDTH_3, VIEW_HEIGHT_3)  andPhoto:photoArr[1]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_3 * 2, VIEW_HEIGHT_3,VIEW_WIDTH_3, VIEW_HEIGHT_3 )  andPhoto:photoArr[2]];
                        [self creatScroolViewWithFrame:CGRectMake(0, VIEW_HEIGHT_3 * 2, VIEW_WIDTH_3 * 2, VIEW_HEIGHT_3)  andPhoto:photoArr[3]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_3 * 2, VIEW_HEIGHT_3 * 2, VIEW_WIDTH_3, VIEW_HEIGHT_3 )  andPhoto:photoArr[4]];
                        break;
                    case VISION_FIVE_Photo_Mode5:
                        [self creatScroolViewWithFrame:CGRectMake(0, 0, VIEW_WIDTH_2, VIEW_WIDTH_3 * 2)  andPhoto:photoArr[0]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_2, 0, VIEW_WIDTH_2, VIEW_HEIGHT_3)  andPhoto:photoArr[1]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_2, VIEW_HEIGHT_3, VIEW_WIDTH_2, VIEW_HEIGHT_3 )  andPhoto:photoArr[2]];
                        [self creatScroolViewWithFrame:CGRectMake(0, VIEW_WIDTH_3 * 2, VIEW_WIDTH_2, VIEW_HEIGHT_3 )  andPhoto:photoArr[3]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_2, VIEW_HEIGHT_3 * 2, VIEW_WIDTH_2, VIEW_HEIGHT_3 )  andPhoto:photoArr[4]];
                        break;
                    case VISION_FIVE_Photo_Mode6:
                        [self creatScroolViewWithFrame:CGRectMake(0, 0, VIEW_WIDTH, VIEW_HEIGHT_4 * 3)  andPhoto:photoArr[0]];
                        [self creatScroolViewWithFrame:CGRectMake(0, VIEW_HEIGHT_4 * 3, VIEW_WIDTH_4, VIEW_HEIGHT_4)  andPhoto:photoArr[1]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_4, VIEW_HEIGHT_4 * 3, VIEW_WIDTH_4, VIEW_HEIGHT_4 )  andPhoto:photoArr[2]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_4 * 2, VIEW_HEIGHT_4 * 3, VIEW_WIDTH_4, VIEW_HEIGHT_4 )  andPhoto:photoArr[3]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_4 * 3, VIEW_HEIGHT_4 * 3, VIEW_WIDTH_4, VIEW_HEIGHT_4 )  andPhoto:photoArr[4]];
                        break;
                        
                    default:
                        break;
                }
                break;
                
            case VISION_Six_Photo:
                switch (photoMode) {
                    case VISION_SIX_Photo_Mode1:
                        [self creatScroolViewWithFrame:CGRectMake(0, 0, VIEW_WIDTH_3, VIEW_HEIGHT_2)  andPhoto:photoArr[0]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_3, 0, VIEW_WIDTH_3, VIEW_HEIGHT_2)  andPhoto:photoArr[1]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_3 * 2, 0, VIEW_WIDTH_3, VIEW_HEIGHT_2)  andPhoto:photoArr[2]];
                        [self creatScroolViewWithFrame:CGRectMake(0, VIEW_HEIGHT_2, VIEW_WIDTH_3, VIEW_HEIGHT_2)  andPhoto:photoArr[3]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_3, VIEW_HEIGHT_2, VIEW_WIDTH_3, VIEW_HEIGHT_2)  andPhoto:photoArr[4]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_3 * 2, VIEW_HEIGHT_2, VIEW_WIDTH_3, VIEW_HEIGHT_2)  andPhoto:photoArr[5]];
                        break;
                    case VISION_SIX_Photo_Mode2:
                        [self creatScroolViewWithFrame:CGRectMake(0, 0, VIEW_WIDTH_2, VIEW_HEIGHT_3)  andPhoto:photoArr[0]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_2, 0,VIEW_WIDTH_2, VIEW_HEIGHT_3)  andPhoto:photoArr[1]];
                        [self creatScroolViewWithFrame:CGRectMake(0, VIEW_HEIGHT_3,VIEW_WIDTH_2, VIEW_HEIGHT_3)  andPhoto:photoArr[2]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_2, VIEW_HEIGHT_3 ,VIEW_WIDTH_2, VIEW_HEIGHT_3)  andPhoto:photoArr[3]];
                        [self creatScroolViewWithFrame:CGRectMake(0, VIEW_HEIGHT_3 * 2,VIEW_WIDTH_2, VIEW_HEIGHT_3)  andPhoto:photoArr[4]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_2, VIEW_HEIGHT_3 * 2, VIEW_WIDTH_2, VIEW_HEIGHT_3)  andPhoto:photoArr[5]];
                        break;
                    case VISION_SIX_Photo_Mode3:
                        [self creatScroolViewWithFrame:CGRectMake(0, 0, VIEW_WIDTH_4 * 3, VIEW_HEIGHT_2)  andPhoto:photoArr[0]];
                        [self creatScroolViewWithFrame:CGRectMake(0,VIEW_HEIGHT_2 , VIEW_WIDTH_4 * 3, VIEW_HEIGHT_2)  andPhoto:photoArr[1]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_4 * 3, 0,VIEW_WIDTH_4, VIEW_HEIGHT_4)  andPhoto:photoArr[2]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_4 * 3, VIEW_HEIGHT_4, VIEW_WIDTH_4, VIEW_HEIGHT_4)  andPhoto:photoArr[3]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_4 * 3, VIEW_HEIGHT_4 * 2, VIEW_WIDTH_4, VIEW_HEIGHT_4)  andPhoto:photoArr[4]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_4 * 3, VIEW_HEIGHT_4 * 3, VIEW_WIDTH_4, VIEW_HEIGHT_4)  andPhoto:photoArr[5]];
                        break;
                    case VISION_SIX_Photo_Mode4:
                        [self creatScroolViewWithFrame:CGRectMake(0, 0, VIEW_WIDTH_2, VIEW_HEIGHT_2)  andPhoto:photoArr[0]];
                        [self creatScroolViewWithFrame:CGRectMake(0, VIEW_HEIGHT_2,VIEW_WIDTH_2, VIEW_HEIGHT_2)  andPhoto:photoArr[1]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_2, 0, VIEW_WIDTH_2, VIEW_HEIGHT_4)  andPhoto:photoArr[2]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_2, VIEW_HEIGHT_4 , VIEW_WIDTH_2, VIEW_HEIGHT_4)  andPhoto:photoArr[3]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_2, VIEW_HEIGHT_4 * 2, VIEW_WIDTH_2, VIEW_HEIGHT_4)  andPhoto:photoArr[4]];
                        [self creatScroolViewWithFrame:CGRectMake(VIEW_WIDTH_2, VIEW_HEIGHT_4 * 3, VIEW_WIDTH_2, VIEW_HEIGHT_4)  andPhoto:photoArr[5]];
                        break;

                        
                    default:
                        break;
                }
                break;
            default:
                NSLog(@"Please let Pictures maintained at between two to six.");
                break;
        }
    }
    return self;
}
- (void)creatScroolViewWithFrame:(CGRect)frame andPhoto:(UIImage *)image{
    ScrollViewImageView *tempImageView= [[ScrollViewImageView alloc]initWithFrame:frame];
    tempImageView.image = image;
    [self addSubview:tempImageView];
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
