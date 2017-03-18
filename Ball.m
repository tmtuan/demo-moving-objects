//
//  Ball.m
//  moving-objects
//
//  Created by ThaoLT on 3/18/17.
//  Copyright © 2017 tmtuan. All rights reserved.
//

#import "Ball.h"

@implementation Ball


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
