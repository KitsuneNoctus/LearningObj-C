//
//  MapPin.h
//  MyMapView
//
//  Created by Henry Calderon on 9/18/23.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MapPin : NSObject <MKAnnotation> {
    CLLocationCoordinate2D coordinate;
}

@property(nonatomic, assign) CLLocationCoordinate2D coordinate;

@end

NS_ASSUME_NONNULL_END
