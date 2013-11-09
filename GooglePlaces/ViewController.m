//
//  ViewController.m
//  GooglePlaces
//
//  Created by burak firik on 11/9/13.
//  Copyright (c) 2013 Criptonion LLC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    int radius=1000;
    core_longitude=locationManager.location.coordinate.longitude;
    core_latitude=locationManager.location.coordinate.latitude;
    
    self.myLawyerData=[NSMutableArray new];
    
    NSString *type=@"lawyer";
    NSString *apiURL=[NSString stringWithFormat:@"https://maps.googleapis.com/maps/api/place/search/json?location=%f,%f&radius=%d&types=%@&sensor=true&key=AIzaSyAj9U6SK4yxy0eEry0_KtiFyY-lCp-mOXU",core_longitude, core_latitude, radius, type];
    
    NSURL *url= [NSURL URLWithString:apiURL];
    
    NSData *data=[NSData dataWithContentsOfURL:url];
    NSError *error=[[NSError alloc] init];
    NSMutableDictionary *myLawyerDict=[NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
    
    NSMutableArray *resultsMA=[myLawyerDict objectForKey:@"results"];
    
    for(int i=0;i<[resultsMA count];i++){
        
        NSMutableDictionary *dict=[[[resultsMA objectAtIndex:i] objectForKey:@"geometry"] objectForKey:@"location"];
        
        NSString *latitude = [dict objectForKey:@"lat"];
        NSString *longitude = [dict objectForKey:@"lng"];
        NSString *name=[[resultsMA objectAtIndex:i] objectForKey:@"name"];
        NSString *iconLink=[[resultsMA objectAtIndex:i] objectForKey:@"icon"];
        NSString *address =[[resultsMA objectAtIndex:i] objectForKey:@"vicinity"];
        
        NSDictionary *tempDict=@{@"lat":latitude, @"lng":longitude, @"name":name, @"iconLink":iconLink, @"address":address};
        
        [self.myLawyerData addObject:tempDict];
        
    }
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
