//
//  ViewController.h
//  MySimonSays
//
//  Created by Henry Calderon on 8/23/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    NSTimer *timer;
    NSTimer *simonTimer;
    
    int time;
    int score;
    int mode;
    
}

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UIButton *startGameButton;

@property (nonatomic, strong) UISwipeGestureRecognizer *leftSwipe;
@property (nonatomic, strong) UISwipeGestureRecognizer *rightSwipe;
@property (nonatomic, strong) UISwipeGestureRecognizer *upSwipe;
@property (nonatomic, strong) UISwipeGestureRecognizer *downSwipe;

- (IBAction)startGame:(id)sender;



@end

