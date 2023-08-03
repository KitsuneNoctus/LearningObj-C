//
//  ViewController.m
//  MyFirstApp
//
//  Created by Henry Calderon on 8/2/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)clickMe:(id)sender {
    
    self.label.text = @"Hello!";
}
@end
