//
//  ViewController.m
//  PlayingSounds
//
//  Created by Henry Calderon on 10/3/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSURL *soundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Sound" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL, &soundID);
}


- (IBAction)playSound:(id)sender {
    AudioServicesPlaySystemSound(soundID);
}

@end
