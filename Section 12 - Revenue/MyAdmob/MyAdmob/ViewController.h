//
//  ViewController.h
//  MyAdmob
//
//  Created by Henry Calderon on 11/1/23.
//

#import <UIKit/UIKit.h>
@import GoogleMobileAds;

@interface ViewController : UIViewController <GADBannerViewDelegate> {
    
    
}

@property (weak, nonatomic) IBOutlet GADBannerView *banner;
@property (strong, nonatomic) GADInterstitialAd *interstitial;

- (IBAction)showAd:(id)sender;


@end

