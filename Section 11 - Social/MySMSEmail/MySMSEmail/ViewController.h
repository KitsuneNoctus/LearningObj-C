//
//  ViewController.h
//  MySMSEmail
//
//  Created by Henry Calderon on 11/1/23.
//

#import <UIKit/UIKit.h>
#import <Accounts/Accounts.h>
#import <MessageUI/MessageUI.h>

@interface ViewController : UIViewController <MFMessageComposeViewControllerDelegate> {
    
}

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *label;

- (IBAction)shareSMS:(id)sender;


@end

