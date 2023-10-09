//
//  ViewController.h
//  Playing Videos
//
//  Created by Henry Calderon on 10/9/23.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <AVKit/AVKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIWebView *webView;


- (IBAction)playVideo:(id)sender;
- (IBAction)streamVideo:(id)sender;



@end

