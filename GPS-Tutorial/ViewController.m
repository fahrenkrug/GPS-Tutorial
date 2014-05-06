//
//  ViewController.m
//  GPS-Tutorial
//
//  Created by Finn Fahrenkrug on 22.04.14.
//  Copyright (c) 2014 Finn Fahrenkrug. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController {
    CLLocationManager *locationManager;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	locationManager = [[CLLocationManager alloc]init];
    locationManager.delegate = self;
    locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    [locationManager startUpdatingLocation];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error{
    NSLog(@"Fail. Error: %@",error);
}

-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations{
    NSInteger lastObjectIndex = [locations count];
    lastObjectIndex--;
    CLLocation *currentLocation = [locations objectAtIndex:lastObjectIndex];
    self.latitudeLabel.text = [NSString stringWithFormat:@"Latitude: %.4f", currentLocation.coordinate.latitude];
    self.longitudeLabel.text = [NSString stringWithFormat:@"Longitude: %.4f", currentLocation.coordinate.longitude];
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(currentLocation.coordinate, 500, 500);
    [self.mapView setRegion:viewRegion animated:YES];
}

@end
