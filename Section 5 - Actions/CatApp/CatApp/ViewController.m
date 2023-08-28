//
//  ViewController.m
//  CatApp
//
//  Created by Henry Calderon on 8/2/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.catButtom.imageView.contentMode = UIViewContentModeScaleAspectFit;
    self.label.hidden = YES;
    
    NSURL *soundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Cat" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL, &soundID);
}


- (IBAction)theCat:(id)sender {
    
    self.label.hidden = NO;
    
    AudioServicesPlaySystemSound(soundID);
    
    [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(catDelay) userInfo:nil repeats:NO];
}

-(void)catDelay {
    self.label.hidden = YES;
}
@end
