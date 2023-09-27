//
//  ViewController.h
//  DisplayingImages
//
//  Created by Henry Calderon on 9/26/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imageView1;
@property (weak, nonatomic) IBOutlet UIImageView *imageView2;

- (IBAction)showMeTheImage:(id)sender;



@end

