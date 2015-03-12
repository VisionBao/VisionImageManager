//
//  ZoomRotatePanImageView.m
//
//
//  Created by Vision on 15/3/10.
//  Copyright (c) 2015年 Vision. All rights reserved.
//

#import "ZoomRotatePanImageView.h"

@interface ZoomRotatePanImageView ()
- (void) setUpGestures;
- (void) handlePinch:(UIPinchGestureRecognizer*)recogniser;
- (void) handleRotate:(UIRotationGestureRecognizer*)recogniser;
- (void) handlePan:(UIPanGestureRecognizer*)recogniser;
- (void) handleTap:(UITapGestureRecognizer*)recogniser;
@end

@implementation ZoomRotatePanImageView

- (id) initWithImage:(UIImage *)image highlightedImage:(UIImage *)highlightedImage {
    self = [super initWithImage:image highlightedImage:highlightedImage];
    if (self) {
        [self setUpGestures];
    }
    return self;
}

- (id) initWithImage:(UIImage *)image {
    self = [super initWithImage:image];
    if (self) {
        [self setUpGestures];
    }
    return self;
}

- (id) init {
    self = [super init];
    if (self) {
        [self setUpGestures];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setUpGestures];
    }
    return self;
}

- (id) initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setUpGestures];
    }
    return self;
}

- (void) setUpGestures {
    self.isHavePanRecogniser = YES;
    self.isHavePinchRecogniser = YES;
    self.isHaveRotateRecogniser = YES;
    self.isHaveTapRecogniser = YES;
    
    
    [self setUserInteractionEnabled:TRUE];
    _pinchRecogniser = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(handlePinch:)];
    _rotateRecogniser = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(handleRotate:)];
    _panRecogniser = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePan:)];
    _tapRecogniser = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
    _tapRecogniser.numberOfTapsRequired = 2;
    
    [_pinchRecogniser setDelegate:self];
    [_rotateRecogniser setDelegate:self];
    [_panRecogniser setDelegate:self];
    [_tapRecogniser setDelegate:self];
    
    [self addGestureRecognizer:_pinchRecogniser];
    [self addGestureRecognizer:_rotateRecogniser];
    [self addGestureRecognizer:_panRecogniser];
    [self addGestureRecognizer:_tapRecogniser];
    
    [self setContentMode:UIViewContentModeScaleAspectFit];
}

- (void) handlePinch:(UIPinchGestureRecognizer*)recogniser {
    if (self.isHavePinchRecogniser) {
        
        recogniser.view.transform = CGAffineTransformScale(recogniser.view.transform, recogniser.scale, recogniser.scale);
        recogniser.scale = 1;
    }
}

- (void) handleRotate:(UIRotationGestureRecognizer*)recogniser {
    if (self.isHaveRotateRecogniser) {
        
        recogniser.view.transform = CGAffineTransformRotate(recogniser.view.transform, recogniser.rotation);
        recogniser.rotation = 0;
    }
}

- (void) handleTap:(UITapGestureRecognizer*)recogniser {
    if (self.isHaveTapRecogniser) {
        
        [self resetWithAnimation:YES];
    }
}

- (void) handlePan:(UIPanGestureRecognizer*)recogniser {
    if (self.isHavePanRecogniser) {
        
        if (recogniser.state == UIGestureRecognizerStateBegan || recogniser.state == UIGestureRecognizerStateChanged) {
            CGPoint translation = [recogniser translationInView:self.superview];
            CGPoint translatedCenter = CGPointMake(self.center.x + translation.x, self.center.y + translation.y);
            [self setCenter:translatedCenter];
            [recogniser setTranslation:CGPointZero inView:self];
        }
    }

}

- (void) reset {
    self.transform = CGAffineTransformIdentity;
    //self.center = self.superview.center;
    self.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
}

- (void) resetWithAnimation:(BOOL)animation {
    
    if (!animation) [self reset];
    else {
        [UIView animateWithDuration:.25 animations:^{
            self.transform = CGAffineTransformIdentity;
            //self.center = self.superview.center;
            self.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
        }];
    }
}

- (BOOL) gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    return YES;
}

@end
