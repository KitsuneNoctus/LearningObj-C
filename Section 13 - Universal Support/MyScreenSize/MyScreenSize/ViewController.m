//
//  ViewController.m
//  MyScreenSize
//
//  Created by Henry Calderon on 11/21/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)screenSize:(id)sender {
    float height = [[UIScreen mainScreen] bounds].size.height;
    float width = [[UIScreen mainScreen] bounds].size.width;
    
    //iphone 14 pro
    if (height == 852) {
        self.label.text = @"iPhone 14 Pro and . . .";
    }
    
    //iphone 6, 7, 8
    else if (height == 667) {
        self.label.text = @"iPhone 6, 7, 8";
    }
    
    //iphone 6+, 7+, 8+
    else if (height == 736) {
        self.label.text = @"iPhone 6+, 7+, 8+";
    }
    
    //iPad Mini Air
    else if (height == 1024) {
        self.label.text = @"iPad Mini Air";
    }
    
    //iPad 10.5
    else if (height == 1112) {
        self.label.text = @"iPad 10.5";
    }
    
    //iPad 12.9
    else if (height == 736) {
        self.label.text = @"iPad 12.9";
    }
    
    else {
        self.label.text = [NSString stringWithFormat:@"Height: %f & Width: %f", height, width];
    }
}

@end
