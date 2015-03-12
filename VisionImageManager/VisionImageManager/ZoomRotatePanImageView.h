//
//  ZoomRotatePanImageView.h
//
//
//  Created by Vision on 15/3/10.
//  Copyright (c) 2015年 Vision. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZoomRotatePanImageView : UIImageView <UIGestureRecognizerDelegate> {
    
@protected
    UIPinchGestureRecognizer *_pinchRecogniser;
    UIRotationGestureRecognizer *_rotateRecogniser;
    UIPanGestureRecognizer *_panRecogniser;
    UITapGestureRecognizer *_tapRecogniser;
}
@property (nonatomic, assign)BOOL isHavePinchRecogniser;
@property (nonatomic, assign)BOOL isHaveRotateRecogniser;
@property (nonatomic, assign)BOOL isHavePanRecogniser;
@property (nonatomic, assign)BOOL isHaveTapRecogniser;
- (void) reset;
- (void) resetWithAnimation:(BOOL)animation;

@end
