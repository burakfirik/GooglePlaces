//
//  MyAnnotation.m
//  GooglePlaces
//
//  Created by burak firik on 11/9/13.
//  Copyright (c) 2013 Criptonion LLC. All rights reserved.
//

#import "MyAnnotation.h"


@implementation MyAnnotation

-(id) initWithName:(NSString *) name address:(NSString *) address coordinate:(CLLocationCoordinate2D)coordinate andIconPathIs:(NSString *) iconPath{
    
    if((self=[super init])){
        _name=[name copy];
        _address=[address copy];
        _coordinate=coordinate;
        _iconPath=iconPath;
    }
    
    return self;
}

-(NSString *) title{
    if([_name isKindOfClass:[NSNull class]]){
        return @"Unknown charge";
    }else{
        return _name;
    }

}


-(NSString * ) subtitle{
    return _address;
    
}


@end
