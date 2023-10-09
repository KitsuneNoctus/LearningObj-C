//
//  ViewController.h
//  MySoundboardApp
//
//  Created by Henry Calderon on 10/4/23.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController : UIViewController {
    SystemSoundID dogID;
    SystemSoundID catID;
    SystemSoundID sheepID;
    SystemSoundID frogID;
    SystemSoundID pigID;
    SystemSoundID horseID;
}


- (IBAction)dog:(id)sender;
- (IBAction)cat:(id)sender;
- (IBAction)sheep:(id)sender;
- (IBAction)frog:(id)sender;
- (IBAction)pig:(id)sender;
- (IBAction)horse:(id)sender;


@end

