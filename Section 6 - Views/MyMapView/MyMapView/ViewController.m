//
//  ViewController.m
//  MyMapView
//
//  Created by Henry Calderon on 9/18/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)directions:(id)sender {
}

- (IBAction)location:(id)sender {
}

- (IBAction)hybrid:(id)sender {
    self.mapKit.mapType = MKMapTypeHybrid;
}

- (IBAction)satellite:(id)sender {
    self.mapKit.mapType = MKMapTypeSatellite;
}

- (IBAction)standard:(id)sender {
    self.mapKit.mapType = MKMapTypeStandard;
}
@end
