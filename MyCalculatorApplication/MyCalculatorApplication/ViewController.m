//
//  ViewController.m
//  MyCalculatorApplication
//
//  Created by Henry Calderon on 8/23/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)operationPressed:(id)sender {
    
    if (currentOperation == 0) result = currentNumber;
    else {
        switch (currentOperation) {
            case 1:
                result = result + currentNumber;
                break;
            case 2:
                result = result - currentNumber;
                break;
            case 3:
                result = result * currentNumber;
                break;
            case 4:
                result = result / currentNumber;
                break;
        }
    }
    
    currentNumber = 0;
    self.label.text = [NSString stringWithFormat:@"%6.0f", result];
    
    if ([sender tag] == 0) result = 0; {
        currentOperation = (int)[sender tag];
    }
    
}

- (IBAction)cancelOperation:(id)sender {
    
    currentNumber = 0;
    self.label.text = @"0";
    
}

- (IBAction)digitPressed:(id)sender {
    
    currentNumber = currentNumber *10 + (float)[sender tag];
    self.label.text = [NSString stringWithFormat:@"%2.0f", currentNumber];
    
}



@end
