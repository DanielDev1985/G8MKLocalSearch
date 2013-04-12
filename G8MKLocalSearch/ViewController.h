//
//  ViewController.h
//  G8MKLocalSearch
//
//  Created by Daniele on 12/04/13.
//  Copyright (c) 2013 Daniele Galiotto - www.g8production.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController<UISearchBarDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *map;

@end
