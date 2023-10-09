//
//  ViewController.m
//  BackgroundColor
//
//  Created by Henry Calderon on 10/2/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)custom:(id)sender {
    self.view.backgroundColor = [UIColor colorWithRed:128.0/255.0 green:56.0/255.0 blue:241.0/255.0 alpha:1.0];
}

- (IBAction)white:(id)sender {
    self.view.backgroundColor = [UIColor whiteColor];
}

- (IBAction)black:(id)sender {
    self.view.backgroundColor = [UIColor blackColor];
}

- (IBAction)yellow:(id)sender {
    self.view.backgroundColor = [UIColor yellowColor];
}

- (IBAction)green:(id)sender {
    self.view.backgroundColor = [UIColor greenColor];
}

- (IBAction)blue:(id)sender {
    self.view.backgroundColor = [UIColor blueColor];
}

- (IBAction)red:(id)sender {
    self.view.backgroundColor = [UIColor redColor];
}
@end
