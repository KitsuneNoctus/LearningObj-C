//
//  ViewController.m
//  DisplayingImages
//
//  Created by Henry Calderon on 9/26/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.imageView1.image = [UIImage imageNamed:@"Dog.png"];
}


- (IBAction)showMeTheImage:(id)sender {
    self.imageView2.image = [UIImage imageNamed:@"Dog.png"];
}
@end
