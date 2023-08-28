//
//  ViewController.m
//  NSTimers
//
//  Created by Aaron on 15/06/2017.
//  Copyright © 2017 Aaron. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    countInt = 0;
    self.label.text = [NSString stringWithFormat:@"%i", countInt];
    
    
//    countInt = 0;
//    self.label.text = [NSString stringWithFormat:@"%i", countInt];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)start:(id)sender {
    
    timer = [NSTimer scheduledTimerWithTimeInterval: 1.0 target: self selector:@selector(updateTimer) userInfo:nil repeats:YES];
    
//    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
    
}

-(void)updateTimer {
    countInt +=1;
    self.label.text = [NSString stringWithFormat:@"%i", countInt];
}

//-(void)updateTimer {
    
//    countInt += 1;
//    self.label.text = [NSString stringWithFormat:@"%i", countInt];
    
//}


- (IBAction)pause:(id)sender {
    
    [timer invalidate];
    
//    [timer invalidate];
    
}

- (IBAction)restart:(id)sender {
    
    [timer invalidate];
    
    countInt = 0;
    self.label.text = [NSString stringWithFormat:@"%i", countInt];
    
//    [timer invalidate];
//
//    countInt = 0;
//    self.label.text = [NSString stringWithFormat:@"%i", countInt];
    
}


@end
