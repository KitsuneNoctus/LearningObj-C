//
//  ViewController.h
//  My Temperature Calculator
//
//  Created by Henry Calderon on 8/18/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *enterLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *outputLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segControl;

- (IBAction)calculate:(id)sender;
- (IBAction)switchConversion:(id)sender;





@end

