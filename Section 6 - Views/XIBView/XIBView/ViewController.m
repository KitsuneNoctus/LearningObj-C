//
//  ViewController.m
//  XIBView
//
//  Created by Henry Calderon on 8/31/23.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)switchView:(id)sender {
    SecondViewController *second = [[SecondViewController alloc]initWithNibName:nil bundle:nil];
    second.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:second animated:YES completion:nil];
    
}
@end
