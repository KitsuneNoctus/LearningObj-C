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
