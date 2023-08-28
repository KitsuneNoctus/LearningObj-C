//
//  ViewController.m
//  UISliders
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


- (IBAction)fontSize:(id)sender {
    
    [self.label setFont:[UIFont fontWithName:@"Verdana" size:self.slider.value]];
    
}
@end
