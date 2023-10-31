//
//  ContactViewController.m
//  MyBusinessApp
//
//  Created by Henry Calderon on 10/31/23.
//

#import "ContactViewController.h"
#import "MapPin.h"

@interface ContactViewController ()

@end

@implementation ContactViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    
    span.latitudeDelta = 0.005;
    span.longitudeDelta = 0.005;
    
    CLLocationCoordinate2D location;
    
    location.longitude = -0.1429748;
    location.latitude = 51.5008305;
    
    region.span = span;
    region.center = location;
    
    [self.mapView setRegion:region animated:YES];
    
    MapPin *ann = [[MapPin alloc] init];
    ann.coordinate = location;
    
    [self.mapView addAnnotation:ann];
    
    
    self.button1.layer.cornerRadius = 5;
    self.button2.layer.cornerRadius = 5;
    self.button3.layer.cornerRadius = 5;
    self.button4.layer.cornerRadius = 5;
    
    [[self navigationItem] setBackBarButtonItem:[[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil]];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)callUs:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:1234567890"] options:@{} completionHandler:nil];
}

- (IBAction)directions:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://maps.apple.com/maps?daddr=51.5008305,-0.1429748"] options:@{} completionHandler:nil];
}

@end
