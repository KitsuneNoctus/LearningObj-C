//
//  ViewController.m
//  ObjectiveFunctions-Fix
//
//  Created by Henry Calderon on 8/9/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view.
  
  self.label.text = @"Apple";
  self.textView.text = @"Banana";
  
}


- (IBAction)enterText:(id)sender {
  
  self.label.text = self.textField.text;
  [self resignFirstResponder]; // This is for iOS version below a certain version
}

-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
  
  if ([text rangeOfCharacterFromSet:[NSCharacterSet newlineCharacterSet]].location == NSNotFound) {
    return YES;
  }
  
  [textView resignFirstResponder];
  
  return NO;
  
}

@end
