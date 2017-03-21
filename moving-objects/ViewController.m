//
//  ViewController.m
//  moving-objects
//
//  Created by ThaoLT on 3/18/17.
//  Copyright © 2017 tmtuan. All rights reserved.
//

#import "ViewController.h"


@interface ViewController () {

}

@end

@implementation ViewController

#pragma mark - Synthesize

@synthesize balls = _balls;

- (id)init
{
    if (self = [super init])
    {
        // add ball
        //self.ball = [[Ball alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 40.0f, 40.0f)];
        //[self.view addSubview:self.ball];
        //self.ball.center = CGPointMake(self.view.bounds.size.width / 2, self.view.bounds.size.height / 2);
        
        // initialize ball's velocity
        //_velocity = CGPointMake(VELOCITY, VELOCITY);
        
        // schedule movement
        [NSTimer scheduledTimerWithTimeInterval:0.005 target:self selector:@selector(move) userInfo:nil repeats:YES];
        
    }
    
    return self;
}

- (void)loadBalls
{
    // add ball
    Ball *ball = [[Ball alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 40.0f, 40.0f)];
    
    ball.center = CGPointMake(self.view.bounds.size.width / 2, self.view.bounds.size.height / 2);
    [ball setVelocity:1.0f];
    
    
    self.balls = [[NSMutableArray alloc] initWithObjects:ball, nil];
    [self.view addSubview:[self.balls objectAtIndex:self.balls.count - 1]];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self init];
    [self loadBalls];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)move
{
    // move ball
    for (Ball *b in _balls) {
        
        b.center = CGPointMake(b.center.x + b.getVelocityX, b.center.y + b.getVelocityY);
        
        // bounce off top and bottom walls
        if (b.center.y < 20 || self.view.bounds.size.height - 20 < b.center.y) {
            //_velocity.y = -_velocity.y;
            [b setVelocityY: -[b getVelocityY]];
        }
        // bounce off left walls
        if (b.center.x < 20 || self.view.bounds.size.width - 20 < b.center.x) {
            //_velocity.x = -_velocity.x;
            [b setVelocityX:-[b getVelocityX]];
        }
    }
}


- (IBAction)addBalls:(id)sender {
    Ball *ball = [[Ball alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 40.0f, 40.0f)];
    ball.center = CGPointMake(self.view.bounds.size.width / 2, self.view.bounds.size.height / 2);
    [ball setVelocity:(float)arc4random_uniform((uint32_t)10)];
    
    [self.balls addObject:ball];
    [self.view addSubview:[self.balls objectAtIndex:self.balls.count - 1]];
}

- (IBAction)removeBalls:(id)sender {
    
    if (self.balls.count > 0) {
        
        int index = arc4random() % self.balls.count;
    
        // remove ball from the screen
        [[self.balls objectAtIndex:index] removeFromSuperview];
        
        // remove ball from the array
        [self.balls removeObjectAtIndex:index];
    }
    
}
@end
