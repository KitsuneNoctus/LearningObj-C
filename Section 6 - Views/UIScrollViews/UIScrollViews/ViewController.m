//
//  ViewController.m
//  UIScrollViews
//
//  Created by Henry Calderon on 8/28/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewDidAppear:(BOOL)animated {
    [self.scrollView setContentSize:CGSizeMake(0, 1500)];
}


@end
