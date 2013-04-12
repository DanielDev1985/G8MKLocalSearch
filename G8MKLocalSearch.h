//
//  G8MKLocalSearch.h
//  G8MKLocalSearch
//
//  Created by Daniele on 12/04/13.
//  Copyright (c) 2013 Daniele Galiotto - www.g8production.com. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <MapKit/MapKit.h>

@interface G8MKLocalSearch : NSObject

+(void)localSearchRequest:(NSString *)naturalLanguageQuery inRegion:(MKCoordinateRegion)region completition:(void(^) (id result))completition;

@end
