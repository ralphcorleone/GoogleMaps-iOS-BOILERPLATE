//
//  ViewController.m
//  GoogleMaps
//
//  Created by Ralph on 2/03/18.
//  Copyright © 2018 R4lph. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setConfiguration];
    [self setUpView];
}

-(void)setUpView{
    GMSCameraPosition *camera = [[GMSCameraPosition alloc] init];
    self.mapView = [GMSMapView mapWithFrame:self.view.bounds camera:camera];
    self.mapView.delegate = self;
    self.mapView.myLocationEnabled = YES;
    self.mapView.settings.rotateGestures = NO;
    self.mapView.settings.tiltGestures = NO;
    [self.view insertSubview:self.mapView atIndex:0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)setConfiguration{
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, 0.2 * NSEC_PER_SEC);
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        self.gps = [[CLLocationManager alloc] init];
        self.gps.delegate = self;
        [self.gps requestWhenInUseAuthorization];
        self.gps.desiredAccuracy = kCLLocationAccuracyBest;
        [self.gps startUpdatingLocation];
        [self.gps requestAlwaysAuthorization];
    });
}

#pragma mark CLLocationManagerDelegate Methods

-(void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation{
    [self.mapView animateToLocation:newLocation.coordinate];
    [self.mapView animateToViewingAngle:15];
    [self.mapView animateToZoom:17];
    [self.gps stopUpdatingLocation];
}

-(void)locationManager:(CLLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status{
    
    if (status == kCLAuthorizationStatusRestricted || status == kCLAuthorizationStatusDenied) {
        
    }
    else if (status == kCLAuthorizationStatusNotDetermined) {
        [self.gps requestAlwaysAuthorization];
        [self.gps requestWhenInUseAuthorization];
    }else{
        
    }
}

-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error{
    NSLog(@"%@", error);
}


@end
