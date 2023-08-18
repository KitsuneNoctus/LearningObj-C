//
//  ViewController.m
//  MyShakeMeSilly
//
//  Created by Henry Calderon on 8/18/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    timeInt = 10;
    scoreInt = 0;
    
    modeInt = 0;
    imageint = 1;
    
    self.timeLabel.text = [NSString stringWithFormat:@"%i", timeInt];
    self.scoreLabel.text = [NSString stringWithFormat:@"%i", scoreInt];
}


- (IBAction)startGame:(id)sender {
    
    if (timeInt == 10) {
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateCountdown) userInfo:nil repeats:YES];
        modeInt = 1;
        self.startGameButton.enabled = NO;
        self.startGameButton.alpha = 0.5;
    }
    
    if (timeInt == 0) {
        timeInt = 10;
        scoreInt = 0;
        imageint = 1;
        
        self.timeLabel.text = [NSString stringWithFormat:@"%i", timeInt];
        self.scoreLabel.text = [NSString stringWithFormat:@"%i", scoreInt];
        
        self.imageView.image = [UIImage imageNamed:[NSString stringWithFormat: @"Maracas1.png"]];
        
        [self.startGameButton setTitle:@"Start Game" forState:UIControlStateNormal];
    }
    
}

-(void)updateCountdown {
    timeInt -= 1;
    self.timeLabel.text = [NSString stringWithFormat:@"%i", timeInt];
    if (timeInt == 0) {
        [timer invalidate];
        modeInt = 0;
        self.startGameButton.enabled = YES;
        self.startGameButton.alpha = 1.0;
        [self.startGameButton setTitle:@"Restart" forState:UIControlStateNormal];
    }
}

-(void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (event.subtype == UIEventSubtypeMotionShake) {
        if (modeInt == 1) {
            scoreInt += 1;
            self.scoreLabel.text = [NSString stringWithFormat:@"%i", scoreInt];
            
            imageint += 1;
            
            if (imageint == 5) {
                imageint = 1;
            }
            
            self.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"Maracas%i.png", imageint]];
        }
    }
}

@end
