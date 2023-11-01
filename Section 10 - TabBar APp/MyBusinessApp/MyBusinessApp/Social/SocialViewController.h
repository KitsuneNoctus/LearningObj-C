//
//  SocialViewController.h
//  MyBusinessApp
//
//  Created by Henry Calderon on 10/31/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SocialViewController : UIViewController {
    NSTimer *timer;
    
}

@property(strong, nonatomic) NSString *detail;

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *actInd;


@end

NS_ASSUME_NONNULL_END
