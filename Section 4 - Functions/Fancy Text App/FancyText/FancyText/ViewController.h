//
//  ViewController.h
//  FancyText
//
//  Created by Aaron on 15/06/2017.
//  Copyright © 2017 Aaron. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    CGFloat fontSize;
    BOOL state;
    
}


@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UIButton *shadowButton;

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

