//
//  ViewController.h
//  GooglePlaces
//
//  Created by burak firik on 11/9/13.
//  Copyright (c) 2013 Criptonion LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyAnnotation.h"

@interface ViewController : UIViewController<MKMapViewDelegate>{


}

@property (nonatomic, strong) IBOutlet MKMapView *map;
@property (nonatomic,strong) NSMutableArray *myLawyerData;

@end
