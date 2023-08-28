//
//  ViewController.h
//  My-Traffic-Lights-App
//
//  Created by Henry Calderon on 8/11/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    NSTimer *timer;
    NSTimer *scoreTimer;
    
    int timerInt;
    int scoreInt;
    
}


@property (weak, nonatomic) IBOutlet UIImageView *trafficLight;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UIButton *startButton;

- (IBAction)startStopButton:(id)sender;


@end

