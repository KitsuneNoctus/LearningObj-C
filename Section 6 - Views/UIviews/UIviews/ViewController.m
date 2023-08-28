//
//  ViewController.m
//  UIviews
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
    
    self.theView.hidden = YES;
}


- (IBAction)hideView:(id)sender {
    
    self.theView.hidden = YES;
    
}

- (IBAction)showView:(id)sender {
    
    self.theView.hidden = NO;
    
}
@end
