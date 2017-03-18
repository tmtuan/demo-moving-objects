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
    CGRect square = CGRectMake(0.0f, 0.0f, 20.0f, 20.0f);
    [[UIColor whiteColor] set];
    UIRectFill(square);
 
}


@end
