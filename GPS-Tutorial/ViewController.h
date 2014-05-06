//
//  ViewController.h
//  GPS-Tutorial
//
//  Created by Finn Fahrenkrug on 22.04.14.
//  Copyright (c) 2014 Finn Fahrenkrug. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController <CLLocationManagerDelegate>
@property (strong, nonatomic) IBOutlet UILabel *latitudeLabel;
@property (strong, nonatomic) IBOutlet UILabel *longitudeLabel;
@property (strong, nonatomic) IBOutlet MKMapView *mapView;

@end
