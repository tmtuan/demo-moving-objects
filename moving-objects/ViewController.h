//
//  ViewController.h
//  moving-objects
//
//  Created by ThaoLT on 3/18/17.
//  Copyright © 2017 tmtuan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Ball.h"

@interface ViewController : UIViewController

@property (nonatomic, strong) NSMutableArray *balls;

- (IBAction)addBalls:(id)sender;

@end

