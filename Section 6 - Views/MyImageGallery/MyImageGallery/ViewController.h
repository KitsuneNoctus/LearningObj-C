//
//  ViewController.h
//  MyImageGallery
//
//  Created by Henry Calderon on 9/27/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    int imageInt;
}

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *label;

@property (weak, nonatomic) IBOutlet UIButton *backButton;
@property (weak, nonatomic) IBOutlet UIButton *nextButton;

- (IBAction)back:(id)sender;
- (IBAction)next:(id)sender;



@end

