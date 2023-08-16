//
//  ViewController.h
//  UISegmentedControls
//
//  Created by Henry Calderon on 8/16/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentControl;

- (IBAction)segControl:(id)sender;



@end

