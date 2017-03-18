//
//  ViewController.m
//  moving-objects
//
//  Created by ThaoLT on 3/18/17.
//  Copyright © 2017 tmtuan. All rights reserved.
//

#import "ViewController.h"

// default velocity
static const float VELOCITY = 10.0f;

@interface ViewController () {

@private
    CGPoint _velocity;

}

@end

@implementation ViewController
@synthesize ball = _ball;

- (id)init
{
    if (self = [super init])
    {
        // add ball
        self.ball = [[Ball alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 40.0f, 40.0f)];
        [self.view addSubview:self.ball];
        self.ball.center = CGPointMake(self.view.bounds.size.width / 2, self.view.bounds.size.height / 2);
        
        // initialize ball's velocity
        _velocity = CGPointMake(VELOCITY, VELOCITY);
        
        // schedule movement
        [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(move) userInfo:nil repeats:YES];
        
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self init];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)move
{
    // move ball
    self.ball.center = CGPointMake(self.ball.center.x + _velocity.x, self.ball.center.y + _velocity.y);
    
    // bounce off top and bottom walls
    if (self.ball.center.y < 20 || self.view.bounds.size.height - 20 < self.ball.center.y) {
        _velocity.y = -_velocity.y;
    }
    // bounce off left walls
    if (self.ball.center.x < 20 || self.view.bounds.size.width - 20 < self.ball.center.x) {
        _velocity.x = -_velocity.x;
    }
    
}

@end
