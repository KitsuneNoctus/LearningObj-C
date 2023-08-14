//
//  ViewController.m
//  RandomWord
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


- (IBAction)randomWord:(id)sender {
    
    NSArray *words = @[@"Apple", @"Banana", @"Carrot", @"Lemon", @"Tomato"];
    int randomWord = arc4random() % words.count;
    self.label.text = words[randomWord];
    
//    NSArray *words = @[@"Apple",@"Banana",@"Carrot",@"Lemon",@"Tomato"];
//
//    int randomWord = arc4random() % words.count;
//
//    self.label.text = words[randomWord];
    
}



@end
