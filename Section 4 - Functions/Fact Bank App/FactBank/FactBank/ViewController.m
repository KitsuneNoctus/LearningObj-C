//
//  ViewController.m
//  FactBank
//
//  Created by Aaron Caines on 21/06/2017.
//  Copyright © 2017 Aaron Caines. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)ramdomFact:(id)sender {
    
    NSArray *facts = @[@"A sloth takes 2 weeks to digest the food he’s eaten.",
                       @"If you kept yelling for 8 years, 7 months and 6 days, you would produce enough sound energy to heat up a cup of tea.",
                       @"There are approximately 100,000 hairs on an average human head.",
                       @"There are more English speakers in China than in the United States.",
                       @"It takes an average person 7 minutes to fall asleep."];
    
    int randomNum = arc4random() % facts.count;
    
    self.label.text = facts[randomNum];
    
}




@end
