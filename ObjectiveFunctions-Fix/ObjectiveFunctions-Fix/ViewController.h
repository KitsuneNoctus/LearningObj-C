//
//  ViewController.h
//  ObjectiveFunctions-Fix
//
//  Created by Henry Calderon on 8/9/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UITextField *textField;



- (IBAction)enterText:(id)sender;

@end

