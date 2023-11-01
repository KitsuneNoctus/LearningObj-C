//
//  ViewController.m
//  MySMSEmail
//
//  Created by Henry Calderon on 11/1/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)shareEmail:(id)sender {
    MFMailComposeViewController *composer = [[MFMailComposeViewController alloc] init];
    [composer setMailComposeDelegate:self];
    
    if ([MFMailComposeViewController canSendMail]) {
        [composer setToRecipients:NULL];
        [composer setSubject:@"Check out this app!"];
        
        [composer setMessageBody:self.label.text isHTML:NO];
        
        NSData *data = UIImageJPEGRepresentation(self.imageView.image, 1);
        
        [composer addAttachmentData:data mimeType:@"image/jpeg" fileName:@"image.jpeg"];
        
        [self presentViewController:composer animated:YES completion:nil];
    }
    else {
        NSLog(@"Can't Send Email");
    }
}

-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)shareSMS:(id)sender {
    MFMessageComposeViewController *composer = [[MFMessageComposeViewController alloc] init];
    [composer setMessageComposeDelegate:self];
    
    if ([MFMessageComposeViewController canSendText]) {
        [composer setRecipients:NULL];
        [composer setBody:self.label.text];
        
        NSData *data = UIImageJPEGRepresentation(self.imageView.image, 1);
        
        [composer addAttachmentData:data typeIdentifier:@"image/jpeg" filename:@"image.jpeg"];
        
        [self presentViewController:composer animated:YES completion:nil];
    }
    else {
        NSLog(@"can't send text");
    }
}

-(void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
