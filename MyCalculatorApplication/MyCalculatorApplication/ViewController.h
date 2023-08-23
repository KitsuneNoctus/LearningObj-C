//
//  ViewController.h
//  MyCalculatorApplication
//
//  Created by Henry Calderon on 8/23/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    int currentOperation;
    
    float result;
    float currentNumber;
    
}

@property (weak, nonatomic) IBOutlet UILabel *label;

- (IBAction)digitPressed:(id)sender;
- (IBAction)cancelOperation:(id)sender;
- (IBAction)operationPressed:(id)sender;





@end

