//
//  ViewController.m
//  MinhaLocalizacao
//
//  Created by Clice Romão on 23/05/15.
//  Copyright (c) 2015 Clice Romão. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.localizacao = [[CLLocationManager alloc] init];
    self.localizacao.delegate = self;
    [self.localizacao requestAlwaysAuthorization];
    [self.localizacao startUpdatingLocation];
    
    self.mapView.delegate = self;
    [self.mapView setShowsUserLocation:YES];
    [self.mapView setZoomEnabled:YES];
    [self.mapView setScrollEnabled:YES];
}

- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation {
    CLLocationCoordinate2D minhaLocalizacao = [userLocation coordinate];
    MKCoordinateRegion zoom = MKCoordinateRegionMakeWithDistance(minhaLocalizacao, 2500, 2500);
    [self.mapView setRegion:zoom animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
