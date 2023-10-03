//
//  ViewController.h
//  PlayingSounds
//
//  Created by Henry Calderon on 10/3/23.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController : UIViewController {
    SystemSoundID soundID;
}


- (IBAction)playSound:(id)sender;


@end

