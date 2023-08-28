//
//  ViewController.h
//  MyRollOfADice
//
//  Created by Henry Calderon on 8/14/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)roll:(id)sender;



@end

