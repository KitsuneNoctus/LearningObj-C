//
//  ViewController.m
//  DisplayingPDFs
//
//  Created by Henry Calderon on 10/2/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"cuteKitty" ofType:@"pdf"];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSURLRequest *request  = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
}


@end
