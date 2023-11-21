//
//  ViewController.m
//  MyInAppPurchase
//
//  Created by Henry Calderon on 11/8/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.level2Button.enabled = NO;
}

-(void)purchased {
    self.level2Button.enabled = YES;
    
    self.unlockLevel2.enabled = NO;
    self.unlockLevel2.hidden = YES;
}


@end
