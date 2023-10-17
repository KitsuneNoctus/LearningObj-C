//
//  DetailsViewController.m
//  MyTableViewApp
//
//  Created by Henry Calderon on 10/16/23.
//

#import "DetailsViewController.h"
#import "MapPin.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = self.detailModal[0];
    
    self.detailTitle.text = self.detailModal[0];
    self.detailDescription.text = self.detailModal[1];
    self.detailImageView.image = [UIImage imageNamed:self.detailModal[2]];
    
    self.button.layer.cornerRadius = 5;
    self.mapView.layer.cornerRadius = 5;
    
    if ([self.detailTitle.text isEqualToString:@"Big Ben"]) {
        self.detailTextView.text = @"Big Ben is the nickname for the Great Bell of the Great Clock of Westminster, at the north end of the Palace of Westminster in London, England, and the name is frequently extended to refer also to the clock and the clock tower.";
        latitude = 51.5007042;
        longitude = -0.1245721;
    }
    if ([self.detailTitle.text isEqualToString:@"Buckingham Palace"]) {
        self.detailTextView.text = @"Buckingham Palace is a royal residence in London and the administrative headquarters of the monarch of the United Kingdom. Located in the City of Westminster, the palace is often at the centre of state occasions and royal hospitality.";
        latitude = 51.5008305;
        longitude = -0.1429748;
    }
    if ([self.detailTitle.text isEqualToString:@"London Eye"]) {
        self.detailTextView.text = @"The London Eye, or the Millennium Wheel, is a cantilevered observation wheel on the South Bank of the River Thames in London. It is Europe's tallest cantilevered observation wheel, and the most popular paid tourist attraction in the United Kingdom with over three million visitors annually.";
        latitude = 51.5033416;
        longitude = -0.1196765;
    }
    if ([self.detailTitle.text isEqualToString:@"St Pauls Cathedral"]) {
        self.detailTextView.text = @"St. Paul's Catholic Church is an American parish church of the Roman Catholic Archdiocese of San Francisco. The parish is located in the city of San Francisco, California, at 221 Valley Street and the corner of Church Street in the city's Noe Valley neighborhood.";
        latitude = 51.513763427734375;
        longitude = -0.09844779968261719;
    }
    if ([self.detailTitle.text isEqualToString:@"Tower Bridge"]) {
        self.detailTextView.text = @"The Tower Bridge is a vertical lift bridge across the Sacramento River, linking West Sacramento in Yolo County to the west, with the capital of California, Sacramento, in Sacramento County to the east. It has also been known as M Street Bridge.";
        latitude = 51.5055166;
        longitude = -0.0753662;
    }
    if ([self.detailTitle.text isEqualToString:@"Westminster Abbey"]) {
        self.detailTextView.text = @"Westminster Abbey, formally titled the Collegiate Church of Saint Peter at Westminster, is an Anglican church in the City of Westminster, London, England. Since 1066, it has been the location of the coronations of 40 English and British monarchs, and a burial site for 18 English, Scottish, and British monarchs.";
        latitude = 51.499399;
        longitude = -0.127391;
    }
    
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    
    span.latitudeDelta = 0.005;
    span.longitudeDelta = 0.005;
    
    CLLocationCoordinate2D location;
    location.latitude = latitude;
    location.longitude = longitude;
    
    region.span = span;
    region.center = location;
    
    [self.mapView setRegion:region animated:YES];
    
    MapPin *ann = [[MapPin alloc] init];
    ann.coordinate = location;
    
    [self.mapView addAnnotation:ann];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)directions:(id)sender {
    NSString *url = [NSString stringWithFormat:@"http://maps.apple.com/maps?daddr=%f,%f", latitude, longitude];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url] options:@{} completionHandler:nil];
}

@end
