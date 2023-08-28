//
//  ViewController.h
//  CatApp
//
//  Created by Henry Calderon on 8/2/23.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController : UIViewController {
    
    SystemSoundID soundID;
    
}

@property (weak, nonatomic) IBOutlet UILabel *label;

- (IBAction)theCat:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *catButtom;




@end

