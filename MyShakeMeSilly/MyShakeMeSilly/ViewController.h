//
//  ViewController.h
//  MyShakeMeSilly
//
//  Created by Henry Calderon on 8/18/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    NSTimer *timer;
    
    int timeInt;
    int scoreInt;
    int modeInt;
    int imageint;
    
}

@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIButton *startGameButton;

- (IBAction)startGame:(id)sender;





@end

