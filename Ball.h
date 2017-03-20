//
//  Ball.h
//  moving-objects
//
//  Created by ThaoLT on 3/18/17.
//  Copyright © 2017 tmtuan. All rights reserved.
//
//  Ball the moves freely around the screen

#import <UIKit/UIKit.h>

@interface Ball : UIView



- (void)setVelocity:(float)velocity;
- (void)setVelocityX:(float)v;
- (void)setVelocityY:(float)v;
- (float)getVelocity;
- (float)getVelocityX;
- (float)getVelocityY;

@end

