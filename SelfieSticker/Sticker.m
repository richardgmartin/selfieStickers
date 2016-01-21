//
//  Sticker.m
//  SelfieSticker
//
//  Created by Richard Martin on 2016-01-21.
//  Copyright © 2016 Richard Martin. All rights reserved.
//

#import "Sticker.h"

@interface Sticker () <UIGestureRecognizerDelegate>

@end

@implementation Sticker

-(instancetype)initWithImage:(UIImage *)image {
    
    self = [super initWithImage:image];
    
    if (self) {
        
        self.userInteractionEnabled = YES;
        
        UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(panHandler:)];
        
        self.gestureRecognizers = @[pan];
        
        for (UIGestureRecognizer *recognizer in self.gestureRecognizers) {
            
            recognizer.delegate = self;
            
        }
    }
    
    return self;
}

-(void)panHandler:(UIPanGestureRecognizer *)gestureRecognizer {
    
    if (gestureRecognizer.state == UIGestureRecognizerStateBegan || gestureRecognizer.state == UIGestureRecognizerStateChanged) {
        
        CGPoint translation = [gestureRecognizer translationInView:gestureRecognizer.view];
        
        [gestureRecognizer.view setTransform:CGAffineTransformTranslate(gestureRecognizer.view.transform, translation.x, translation.y)];
        
        [gestureRecognizer setTranslation:CGPointZero inView:gestureRecognizer.view];
        
    }
}


@end
