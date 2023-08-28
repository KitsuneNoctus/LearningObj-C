//
//  ViewController.m
//  My Tap Me Fast
//
//  Created by Henry Calderon on 8/14/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    timeInt = 10;
    tapInt = 0;
    gameInt = 0;
    
    self.timeLabel.text = [NSString stringWithFormat:@"%i", timeInt];
    self.scoreLabel.text = [NSString stringWithFormat:@"%i", tapInt];
    
    
}


- (IBAction)startGame:(id)sender {
    
    if (timeInt == 10) {
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(startCounter) userInfo:nil repeats:YES];
        
        self.startButton.enabled = NO;
        self.startButton.alpha = 0.5;
    }
    
    if (gameInt == 1) {
        tapInt += 1;
        self.scoreLabel.text = [NSString stringWithFormat:@"%i", tapInt];
    }
    else {
        timeInt = 10;
        tapInt = 0;
        
        self.timeLabel.text = [NSString stringWithFormat:@"%i", timeInt];
        self.scoreLabel.text = [NSString stringWithFormat:@"%i", tapInt];
        
        [self.startButton setTitle:@"Start" forState:UIControlStateNormal];
    }
    
}

-(void)startCounter {
    timeInt -= 1;
    self.timeLabel.text = [NSString stringWithFormat:@"%i", timeInt];
    
    gameInt = 1;
    
    self.startButton.enabled = YES;
    self.startButton.alpha = 1.0;
    
    [self.startButton setTitle:@"Tap" forState:UIControlStateNormal];
    
    if (timeInt == 0) {
        [timer invalidate];
        
        self.startButton.enabled = NO;
        self.startButton.alpha = 0.5;
        
        [self.startButton setTitle:@"Restart" forState:UIControlStateNormal];
        
        [NSTimer scheduledTimerWithTimeInterval:4.0 target:self selector:@selector(restart) userInfo:nil repeats:NO];
    }
}

-(void)restart {
    self.startButton.enabled = YES;
    self.startButton.alpha = 1.0;
    
    gameInt = 0;
}

@end
