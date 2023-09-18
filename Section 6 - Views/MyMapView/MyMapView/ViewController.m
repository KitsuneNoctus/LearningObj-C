//
//  ViewController.m
//  MyMapView
//
//  Created by Henry Calderon on 9/18/23.
//

#import "ViewController.h"
#import "MapPin.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    
    span.latitudeDelta = 0.005; // This is the zoom
    span.longitudeDelta = 0.005;
    
    CLLocationCoordinate2D location;
    
    location.latitude = 34.008896;
    location.longitude = -118.4973998;
    
    region.span = span;
    region.center = location;
    
    [self.mapKit setRegion:region animated:YES];
    
    MapPin *ann = [[MapPin alloc] init];
    ann.coordinate = location;
    [self.mapKit addAnnotation:ann];
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
