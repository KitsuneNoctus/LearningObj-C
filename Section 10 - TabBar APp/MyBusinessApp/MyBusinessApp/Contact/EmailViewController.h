//
//  EmailViewController.h
//  MyBusinessApp
//
//  Created by Henry Calderon on 10/31/23.
//

#import <UIKit/UIKit.h>
#import <Accounts/Accounts.h>
#import <MessageUI/MessageUI.h>

NS_ASSUME_NONNULL_BEGIN

@interface EmailViewController : UIViewController <UITextViewDelegate, MFMailComposeViewControllerDelegate> {
    
}

@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *emailField;
@property (weak, nonatomic) IBOutlet UITextView *messageField;
@property (weak, nonatomic) IBOutlet UIButton *button;

- (IBAction)email:(id)sender;
- (IBAction)dismissKeyboard:(id)sender;



@end

NS_ASSUME_NONNULL_END
