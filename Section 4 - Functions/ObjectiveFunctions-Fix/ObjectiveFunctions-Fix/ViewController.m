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


- (IBAction)customFont:(id)sender {
  
  [self.label setFont:[UIFont fontWithName:@"SuperMarioGalaxy" size:30]];
}

- (IBAction)right:(id)sender {
  self.label.textAlignment = NSTextAlignmentRight;
}

- (IBAction)left:(id)sender {
  self.label.textAlignment = NSTextAlignmentLeft;
}

- (IBAction)center:(id)sender {
  
  self.label.textAlignment = NSTextAlignmentCenter;
  
}


- (IBAction)shadowColor:(id)sender {
  
  self.label.layer.shadowColor = [[UIColor blueColor] CGColor];
  
}

- (IBAction)dropShadow:(id)sender {
  
  self.label.layer.shadowColor = [[UIColor blackColor] CGColor];
  self.label.layer.shadowOpacity = 0.5;
  self.label.layer.shadowRadius = 1.0f;
  self.label.layer.shadowOffset = CGSizeMake(2, 2);
  
}

- (IBAction)fontSize:(id)sender {
  
  [self.label setFont:[UIFont fontWithName:@"Futura" size:30]];
  
}

- (IBAction)setBackground:(id)sender {
  
  self.label.backgroundColor = [UIColor blackColor];
  
}

- (IBAction)setColor:(id)sender {

  self.label.textColor = [UIColor redColor];
  
}




-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
  
  if ([text rangeOfCharacterFromSet:[NSCharacterSet newlineCharacterSet]].location == NSNotFound) {
    return YES;
  }
  
  [textView resignFirstResponder];
  
  return NO;
  
}

@end
