//
//  ViewController.m
//  MyFactBank
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


- (IBAction)randomFact:(id)sender {
    
    NSArray *facts = @[@"It is impossible to stand backwards on stairs.",
                       @"A sloth takes 2 weeks to digest the food he’s eaten.",
                       @"In the USA, there are more Chinese restaurants than all the McDonald’s, KFCs, Burger Kings and Wendy’s put together.",
                       @"Butt is actually a British measuring unit equivalent to 125 US gallons or 105 imperial gallons.",
                       @"At any given moment, about 0.7% of the people in the world are drunk."];
    
    int randomFact = arc4random() % facts.count;
    self.label.text = facts[randomFact];
    
}

@end
