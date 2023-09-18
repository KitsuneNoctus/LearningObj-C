//
//  ViewController.m
//  WebViewApplication
//
//  Created by Henry Calderon on 9/18/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.google.com"]]];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0/2.0 target:self selector:@selector(loading) userInfo:nil repeats:YES];
}

-(void)loading {
    if (self.webView.loading) {
        [self.activityIndicator startAnimating];
    }
    else {
        [self.activityIndicator stopAnimating];
    }
}

-(void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://%@", self.searchBar.text]]]];
}


@end
