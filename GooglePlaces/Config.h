//
//  Config.h
//  GooglePlaces
//
//  Created by burak firik on 11/9/13.
//  Copyright (c) 2013 Criptonion LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface Config : NSObject
{

}

extern CLLocationCoordinate2D locationCordinate;
extern CLLocationManager *locationManager;

extern float core_latitude;
extern float core_longitude;

@end
