//
//  ViewController.m
//  ShakeGesture
//
//  Created by Henry Calderon on 8/18/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (event.subtype == UIEventSubtypeMotionShake) {
        self.label.text = @"The device was shaken";
    }
}


@end
