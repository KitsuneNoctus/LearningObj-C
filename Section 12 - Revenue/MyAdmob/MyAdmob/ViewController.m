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

//MARK: Commented out sections are from tutorial that are outdated.
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.banner.adUnitID = @"AD-ID";
    self.banner.rootViewController = self;
    self.banner.adSize = kGADAdSizeSmartBannerPortrait;
    //Above is deprecated, use GADPortraitAnchoredAdaptiveBannerAdSizeWithWidth
    [self.banner loadRequest:[GADRequest request]];
    
    self.banner.delegate = self;
    
    self.banner.hidden = YES;
    
//    self.interstitial = [[GADInterstitialAd alloc] initWithAdUnitID:@"AD-ID"];
    GADRequest *request = [GADRequest request];
    
//    [self.interstitial loadRequest:request];
}

-(void)bannerViewDidReceiveAd:(GADBannerView *)bannerView {
    self.banner.hidden = NO;
}

-(void)bannerView:(GADBannerView *)bannerView didFailToReceiveAdWithError:(NSError *)error {
    self.banner.hidden = YES;
}


- (IBAction)showAd:(id)sender {
//    if (self.interstitial.isReady) {
//        [self.interstitial presentFromRootViewController:self];
//        [self createAd];
//    }
}

-(void)createAd {
//    self.interstitial = [[GADInterstitialAd alloc] initWithAdUnitID:@"AD-ID"];
    GADRequest *request = [GADRequest request];
    
//    [self.interstitial loadRequest:request];
}

@end
