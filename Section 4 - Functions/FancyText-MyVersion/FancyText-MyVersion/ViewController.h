//
//  ViewController.h
//  FancyText-MyVersion
//
//  Created by Henry Calderon on 8/10/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
  
  CGFloat fontSize;
  BOOL state;
  
  
}

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIButton *shadowBUtton;


- (IBAction)enterText:(id)sender;

- (IBAction)red:(id)sender;
- (IBAction)blue:(id)sender;
- (IBAction)green:(id)sender;

- (IBAction)font1:(id)sender;
- (IBAction)font2:(id)sender;
- (IBAction)font3:(id)sender;
- (IBAction)font4:(id)sender;

- (IBAction)shadow:(id)sender;

- (IBAction)small:(id)sender;
- (IBAction)medium:(id)sender;
- (IBAction)large:(id)sender;


@end

