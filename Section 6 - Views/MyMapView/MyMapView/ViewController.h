//
//  ViewController.h
//  MyMapView
//
//  Created by Henry Calderon on 9/18/23.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet MKMapView *mapKit;


- (IBAction)standard:(id)sender;
- (IBAction)satellite:(id)sender;
- (IBAction)hybrid:(id)sender;


- (IBAction)directions:(id)sender;


@end

