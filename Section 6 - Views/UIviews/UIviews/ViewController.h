//
//  ViewController.h
//  UIviews
//
//  Created by Henry Calderon on 8/28/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *theView;

- (IBAction)showView:(id)sender;
- (IBAction)hideView:(id)sender;


@end

