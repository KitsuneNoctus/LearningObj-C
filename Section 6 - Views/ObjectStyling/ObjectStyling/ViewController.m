//
//  ViewController.m
//  ObjectStyling
//
//  Created by Henry Calderon on 10/3/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [[self.imageView1 layer] setBorderWidth:10.0f];
    [[self.imageView1 layer] setBorderColor:[UIColor colorWithRed:25.0/255.0 green:100.0/255.0 blue:175.0/255.0 alpha:0.5].CGColor];
    
    [[self.imageView1 layer] setCornerRadius:30.0f];
    [[self.imageView1 layer] setMasksToBounds:YES];
}


@end
