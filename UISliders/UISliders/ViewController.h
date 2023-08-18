//
//  ViewController.h
//  UISliders
//
//  Created by Henry Calderon on 8/18/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UISlider *slider;

- (IBAction)fontSize:(id)sender;



@end

