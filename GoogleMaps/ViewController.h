//
//  ViewController.h
//  GoogleMaps
//
//  Created by Ralph on 2/03/18.
//  Copyright © 2018 R4lph. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GoogleMaps/GoogleMaps.h>

@interface ViewController : UIViewController <GMSMapViewDelegate,CLLocationManagerDelegate>

@property (nonatomic, retain) CLLocation *location;
@property (nonatomic, retain) GMSCameraPosition *camera;
@property (strong) CLLocationManager *gps;
@property (nonatomic, retain) GMSMapView *mapView;


@end

