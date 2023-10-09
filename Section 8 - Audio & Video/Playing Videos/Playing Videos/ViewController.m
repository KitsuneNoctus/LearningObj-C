//
//  ViewController.m
//  Playing Videos
//
//  Created by Henry Calderon on 10/9/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *embedCode = @"<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/bptr7UvrCbQ?si=Aws6HXnps-s-NC_V\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>";
    [[self webView] loadHTMLString:embedCode baseURL:nil];
}


- (IBAction)streamVideo:(id)sender {
    
    NSURL *videoURL = [NSURL URLWithString:@"https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_5mb.mp4"];
    
    AVPlayer *player = [AVPlayer playerWithURL:videoURL];
    AVPlayerViewController *controller = [[AVPlayerViewController alloc] init];
    controller.player = player;
    
    [player play];
    
    [self presentViewController:controller animated:YES completion:nil];
    
    
}

- (IBAction)playVideo:(id)sender {
    NSURL *videoURL = [[NSBundle mainBundle] URLForResource:@"SampleVideo_1280x720_5mb" withExtension:@"mp4"];
    AVPlayer *player = [AVPlayer playerWithURL:videoURL];
    
    AVPlayerViewController *controller = [[AVPlayerViewController alloc] init];
    controller.player = player;
    
    [player play];
    
    [self presentViewController:controller animated:YES completion:nil];
}

@end
