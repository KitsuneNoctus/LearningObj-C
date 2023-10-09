//
//  ViewController.m
//  ImagesFromURL
//
//  Created by Henry Calderon on 9/27/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.imageView.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://img.freepik.com/free-photo/red-white-cat-i-white-studio_155003-13189.jpg?t=st=1696009695~exp=1696010295~hmac=dc16820a49e152682aa483cd0ffce74667369e7c2327c5644e4125ec5f52336a"]]];
}


@end
