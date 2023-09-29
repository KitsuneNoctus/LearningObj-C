//
//  ViewController.h
//  MySnapAttack
//
//  Created by Henry Calderon on 9/29/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSTimer *timer;
    NSTimer *imageTimer;
    
    int timeInt;
    int scoreInt;
    int gameInt;
}

@property (weak, nonatomic) IBOutlet UIImageView *imageView1;
@property (weak, nonatomic) IBOutlet UIImageView *imageView2;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UIButton *startGameButton;

- (IBAction)startGame:(id)sender;




@end

