//
//  ViewController.m
//  UISegmentedControls
//
//  Created by Henry Calderon on 8/16/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)segControl:(id)sender {
    if (self.segmentControl.selectedSegmentIndex == 0) {
        self.label.text = @"Segment 1 was Selected";
    }
    else if (self.segmentControl.selectedSegmentIndex == 1) {
        self.label.text = @"Segment 2 was Selected";
    }
    else if (self.segmentControl.selectedSegmentIndex == 2) {
        self.label.text = @"Segment 3 was Selected";
    }
    else if (self.segmentControl.selectedSegmentIndex == 3) {
        self.label.text = @"Segment 4 was Selected";
    }
}
@end
