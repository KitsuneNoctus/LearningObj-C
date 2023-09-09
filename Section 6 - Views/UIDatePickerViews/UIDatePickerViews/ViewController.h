//
//  ViewController.h
//  UIDatePickerViews
//
//  Created by Henry Calderon on 9/8/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

- (IBAction)selectADate:(id)sender;



@end

