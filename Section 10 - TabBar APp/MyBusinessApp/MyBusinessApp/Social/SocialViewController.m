//
//  SocialViewController.m
//  MyBusinessApp
//
//  Created by Henry Calderon on 10/31/23.
//

#import "SocialViewController.h"

@interface SocialViewController ()

@end

@implementation SocialViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = self.detail;
    
    if ([self.navigationItem.title isEqualToString:@"Facebook"]) {
        [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.facebook.com"]]];
    }
    
    if ([self.navigationItem.title isEqualToString:@"Twitter"]) {
        [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.twitter.com"]]];
    }
    
    if ([self.navigationItem.title isEqualToString:@"Google+"]) {
        [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.plus.google.com"]]];
    }
    
    if ([self.navigationItem.title isEqualToString:@"LinkedIn"]) {
        [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.linkedin.com"]]];
    }
    
    if ([self.navigationItem.title isEqualToString:@"YouTube"]) {
        [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.youtube.com"]]];
    }
    
    if ([self.navigationItem.title isEqualToString:@"Website"]) {
        [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.google.com"]]];
    }
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0/2.0 target:self selector:@selector(loading) userInfo:nil repeats:YES];
}

-(void)loading {
    if (self.webView.loading) {
        [self.actInd startAnimating];
    }
    else {
        [self.actInd stopAnimating];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
