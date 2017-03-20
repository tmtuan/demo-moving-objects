//
//  Ball.m
//  moving-objects
//
//  Created by ThaoLT on 3/18/17.
//  Copyright © 2017 tmtuan. All rights reserved.
//

#import "Ball.h"
@interface Ball () {

@public
    float _velocity;
    CGPoint _velocityVector;
    
}

@end
@implementation Ball


- (id)initWithVelocity:(float)velocity
{
    if (self = [super init]) {
        _velocity = velocity;
        
        _velocityVector = CGPointMake(_velocity, _velocity);
    }
    
    return self;
}

#pragma mark - Setters and Getters
- (void)setVelocity:(float)velocity
{
    _velocity = velocity;
    _velocityVector = CGPointMake(_velocity, _velocity);
}

- (float)getVelocity
{
    return _velocity;
}

- (void)setVelocityX:(float)v
{
    _velocityVector.x = v;
}

- (void)setVelocityY:(float)v
{
    _velocityVector.y = v;
}

- (float)getVelocityX
{
    return _velocityVector.x;
}

- (float)getVelocityY
{
    return _velocityVector.y;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    float height = 40.0f;
    CGRect square = CGRectMake(0.0f, 0.0f, height, height);
    self.layer.cornerRadius = height / 2;
    self.layer.masksToBounds = TRUE;
    
    [[UIColor redColor] set];
    UIRectFill(square);
 
}


@end
