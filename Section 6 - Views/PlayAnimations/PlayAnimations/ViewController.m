//
//  ViewController.m
//  PlayAnimations
//
//  Created by Henry Calderon on 10/3/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)playAnimation:(id)sender {
    self.imageView.animationImages =  [NSArray arrayWithObjects:
                                       [UIImage imageNamed:@"Image1.png"],
                                       [UIImage imageNamed:@"Image2.png"],
                                       [UIImage imageNamed:@"Image3.png"],
                                       [UIImage imageNamed:@"Image4.png"],
                                       [UIImage imageNamed:@"Image5.png"],
                                       [UIImage imageNamed:@"Image6.png"],
                                       [UIImage imageNamed:@"Image7.png"],
                                       [UIImage imageNamed:@"Image8.png"],nil];
    
    [self.imageView setAnimationRepeatCount:0];
    self.imageView.animationDuration = 0.5;
    [self.imageView startAnimating];
}

@end
