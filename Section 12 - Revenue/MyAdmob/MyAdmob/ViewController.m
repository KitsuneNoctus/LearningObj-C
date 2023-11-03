//
//  ViewController.m
//  MyAdmob
//
//  Created by Henry Calderon on 11/1/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.banner.adUnitID = @"ca-app-pub-5649556413317477/1480073409";
    self.banner.rootViewController = self;
    self.banner.adSize = kGADAdSizeSmartBannerPortrait;
    //Above is deprecated, use GADPortraitAnchoredAdaptiveBannerAdSizeWithWidth
    [self.banner loadRequest:[GADRequest request]];
    
    self.banner.delegate = self;
    
    self.banner.hidden = YES;
}

-(void)bannerViewDidReceiveAd:(GADBannerView *)bannerView {
    self.banner.hidden = NO;
}

-(void)bannerView:(GADBannerView *)bannerView didFailToReceiveAdWithError:(NSError *)error {
    self.banner.hidden = YES;
}


@end
