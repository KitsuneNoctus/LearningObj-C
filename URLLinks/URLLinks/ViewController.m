//
//  ViewController.m
//  URLLinks
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


- (IBAction)URLLink:(id)sender {
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.google.com"] options:@{} completionHandler:nil];
    
}

@end
