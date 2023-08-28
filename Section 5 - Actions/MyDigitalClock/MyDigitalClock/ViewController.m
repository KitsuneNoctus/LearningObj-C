//
//  ViewController.m
//  MyDigitalClock
//
//  Created by Henry Calderon on 8/16/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self updateTime];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTime) userInfo:nil repeats:YES];
    
    self.settingsView.hidden = YES;
    self.settingsButton.alpha = 0.25;
    
}

-(void)updateTime {
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"hh:mm:ss"];
    self.label.text = [formatter stringFromDate:[NSDate date]];
    
}

- (IBAction)settings:(id)sender {
    
    if (self.settingsView.hidden == NO) {
        self.settingsView.hidden = YES;
        self.settingsButton.alpha = 0.25;
        [self.settingsButton setTitle:@"Show Settings" forState:UIControlStateNormal];
    }
    else {
        self.settingsView.hidden = NO;
        self.settingsButton.alpha = 1.0;
        [self.settingsButton setTitle:@"Hide Settings" forState:UIControlStateNormal];
    }
    
}

- (IBAction)backgroundSeg:(id)sender {
    
    if (self.backgroundColor.selectedSegmentIndex == 0) {
        self.view.backgroundColor = [UIColor blackColor];
    }
    else if (self.backgroundColor.selectedSegmentIndex == 1) {
        self.view.backgroundColor = [UIColor whiteColor];
    }
    else if (self.backgroundColor.selectedSegmentIndex == 2) {
        self.view.backgroundColor = [UIColor blueColor];
    }
    else if (self.backgroundColor.selectedSegmentIndex == 3) {
        self.view.backgroundColor = [UIColor yellowColor];
    }
}

- (IBAction)clockSeg:(id)sender {
    
    if (self.clockColor.selectedSegmentIndex == 0) {
        self.label.textColor = [UIColor whiteColor];
    }
    else if (self.clockColor.selectedSegmentIndex == 1) {
        self.label.textColor = [UIColor blackColor];
    }
    else if (self.clockColor.selectedSegmentIndex == 2) {
        self.label.textColor = [UIColor greenColor];
    }
    else if (self.clockColor.selectedSegmentIndex == 3) {
        self.label.textColor = [UIColor redColor];
    }
    
}
@end
