//
//  ViewController.h
//  MyDigitalClock
//
//  Created by Henry Calderon on 8/16/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSTimer *timer;
}


@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *settingsButton;
@property (weak, nonatomic) IBOutlet UIView *settingsView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *clockColor;
@property (weak, nonatomic) IBOutlet UISegmentedControl *backgroundColor;

- (IBAction)clockSeg:(id)sender;
- (IBAction)backgroundSeg:(id)sender;
- (IBAction)settings:(id)sender;



@end

