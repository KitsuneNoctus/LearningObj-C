//
//  ViewController.h
//  WebViewApplication
//
//  Created by Henry Calderon on 9/18/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UISearchBarDelegate> {
    NSTimer *timer;
}


@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;


@end

