//
//  ViewController.m
//  MySoundboardApp
//
//  Created by Henry Calderon on 10/4/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSURL *soundURL1 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Dog" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge  CFURLRef)soundURL1, &dogID);
    
    NSURL *soundURL2 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Cat" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge  CFURLRef)soundURL2, &catID);
    
    NSURL *soundURL3 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Sheep" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge  CFURLRef)soundURL3, &sheepID);
    
    NSURL *soundURL4 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Frog" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge  CFURLRef)soundURL4, &frogID);
    
    NSURL *soundURL5 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Pig" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge  CFURLRef)soundURL5, &pigID);
    
    NSURL *soundURL6 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Horse" ofType:@"mp3"]];
    AudioServicesCreateSystemSoundID((__bridge  CFURLRef)soundURL6, &horseID);
}


- (IBAction)horse:(id)sender {
    AudioServicesPlaySystemSound(horseID);
}

- (IBAction)pig:(id)sender {
    AudioServicesPlaySystemSound(pigID);
}

- (IBAction)frog:(id)sender {
    AudioServicesPlaySystemSound(frogID);
}

- (IBAction)sheep:(id)sender {
    AudioServicesPlaySystemSound(sheepID);
}

- (IBAction)cat:(id)sender {
    AudioServicesPlaySystemSound(catID);
}

- (IBAction)dog:(id)sender {
    AudioServicesPlaySystemSound(dogID);
}

@end
