//
//  ViewController.m
//  MyRollOfADice
//
//  Created by Henry Calderon on 8/14/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)roll:(id)sender {
    
    int min = 1;
    int max = 7;
    
    int randomNum = arc4random_uniform(max-min)+min;
    
    self.label.text = [NSString stringWithFormat:@"Rolled a %i", randomNum];
    self.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"Dice%i", randomNum]];
}
@end
