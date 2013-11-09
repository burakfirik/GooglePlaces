//
//  MyAnnotation.h
//  GooglePlaces
//
//  Created by burak firik on 11/9/13.
//  Copyright (c) 2013 Criptonion LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MyAnnotation : NSObject<MKAnnotation>{
    NSString *_name;
    NSString *_address;
    CLLocationCoordinate2D _coordinate;
    NSString *_iconPath;
}

@property (copy) NSString *name;
@property(copy) NSString *address;
@property (copy) NSString *iconPath;
@property (nonatomic,readonly) CLLocationCoordinate2D coordinate;

-(id)initWithName:(NSString* )name address:(NSString* )address coordinate:(CLLocationCoordinate2D)coordinate andIconPathIs:(NSString *)iconPath;

@end
