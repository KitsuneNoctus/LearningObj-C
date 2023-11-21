//
//  ViewController.m
//  MyInAppPurchase
//
//  Created by Henry Calderon on 11/8/23.
//

#import "ViewController.h"

#define savePurchase @"Save"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSUserDefaults *savedApp = [NSUserDefaults standardUserDefaults];
    bool saved = [savedApp boolForKey:savePurchase];
    
    if (saved) {
        [self purchased];
    }
    else {
        self.level2Button.enabled = NO;
    }
}

-(void)purchased {
    self.level2Button.enabled = YES;
    
    self.unlockLevel2.enabled = NO;
    self.unlockLevel2.hidden = YES;
    
    NSUserDefaults *SavedApp = [NSUserDefaults standardUserDefaults];
    [SavedApp setBool:true forKey:savePurchase];
    [SavedApp synchronize];
}


@end
