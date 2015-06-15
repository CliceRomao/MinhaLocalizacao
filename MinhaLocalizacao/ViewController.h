//
//  ViewController.h
//  MinhaLocalizacao
//
//  Created by Clice Romão on 23/05/15.
//  Copyright (c) 2015 Clice Romão. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController <CLLocationManagerDelegate, MKMapViewDelegate>

@property (strong, nonatomic) CLLocationManager *localizacao;

@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end

