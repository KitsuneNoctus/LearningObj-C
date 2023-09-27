//
//  ViewController.m
//  MyImageGallery
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
    
    imageInt = 1;
    [self imageGallery];
}


- (IBAction)next:(id)sender {
    imageInt += 1;
    [self imageGallery];
}

- (IBAction)back:(id)sender {
    imageInt -= 1;
    [self imageGallery];
}

-(void)imageGallery {
    self.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"Image%i.jpg", imageInt]];
    self.label.text = [NSString stringWithFormat:@"%i/6", imageInt];
    
    if (imageInt == 1) {
        self.backButton.enabled = NO;
        self.backButton.alpha = 0.5;
    }
    else if (imageInt == 6) {
        self.nextButton.enabled = NO;
        self.nextButton.alpha = 0.5;
    }
    else {
        self.backButton.enabled = YES;
        self.backButton.alpha = 1.0;
        self.nextButton.enabled = YES;
        self.nextButton.alpha = 1.0;
    }
}
@end
