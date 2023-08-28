//
//  ViewController.m
//  My-Traffic-Lights-App
//
//  Created by Henry Calderon on 8/11/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    scoreInt = 0;
    self.scoreLabel.text = [NSString stringWithFormat:@"%i", scoreInt];
}


- (IBAction)startStopButton:(id)sender {
    
    if (scoreInt == 0) {
        timerInt = 3;
        self.trafficLight.image = [UIImage imageNamed:@"trafficLight.png"];
        
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(startCounter) userInfo:nil repeats:YES];
        self.startButton.enabled = NO;
        [self.startButton setTitle:@"" forState:UIControlStateNormal];
        
        self.scoreLabel.text = [NSString stringWithFormat:@"%i", scoreInt];
    }
    else {
        [scoreTimer invalidate];
        [self.startButton setTitle:@"Restart" forState:UIControlStateNormal];
    }
    
    if (timerInt == 0) {
        scoreInt = 0;
        timerInt = 3;
    }
    
}

-(void)startCounter {
    timerInt -= 1;
    
    if (timerInt == 2) {
        self.trafficLight.image = [UIImage imageNamed:@"trafficLight3.png"];
    }
    else if (timerInt == 1) {
        self.trafficLight.image = [UIImage imageNamed:@"trafficLight2.png"];
    }
    else if (timerInt == 0) {
        self.trafficLight.image = [UIImage imageNamed:@"trafficLight1.png"];
        [timer invalidate];
        self.startButton.enabled = YES;
        [self.startButton setTitle:@"Stop" forState:UIControlStateNormal];
        
        scoreTimer = [NSTimer scheduledTimerWithTimeInterval:0.0001 target:self selector:@selector(scoreCounter) userInfo:nil repeats:YES];
    }
}

-(void)scoreCounter {
    scoreInt += 1;
    self.scoreLabel.text = [NSString stringWithFormat:@"%i", scoreInt];
}

@end
