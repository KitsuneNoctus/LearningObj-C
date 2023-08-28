//
//  ViewController.m
//  DelayedActions
//
//  Created by Henry Calderon on 8/22/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)delayAction:(id)sender {
    
    [self performSelector:@selector(delay) withObject:nil afterDelay:5.0];
    
}

-(void)delay {
    self.label.text = @"Hello";
}

@end
