//
//  G8MKLocalSearch.m
//  G8MKLocalSearch
//
//  Created by Daniele on 12/04/13.
//  Copyright (c) 2013 Daniele Galiotto - www.g8production.com. All rights reserved.
//

#import "G8MKLocalSearch.h"

@implementation G8MKLocalSearch

+(void)localSearchRequest:(NSString *)naturalLanguageQuery inRegion:(MKCoordinateRegion)region completition:(void(^) (id result))completition
{
	
#if __IPHONE_OS_VERSION_MIN_REQUIRED < 60000
	
	dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^(void){
		
		NSMutableString *urlString = [NSMutableString stringWithFormat:@"http://maps.googleapis.com/maps/api/geocode/json?address=%@&sensor=true", naturalLanguageQuery];
		[urlString setString:[urlString stringByReplacingOccurrencesOfString:@" " withString:@"+"]];
		
		NSURL *requestUrl = [NSURL URLWithString:urlString];
		NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:requestUrl];
		
		NSHTTPURLResponse *response = nil;
		NSError *error = nil;
		
		NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
		
		if(error == nil)
		{
			id jsonObj = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
			completition(jsonObj);
		}
		else
			completition(nil);
		
	});
	
#else
	
	MKLocalSearchRequest *request6 = [[MKLocalSearchRequest alloc] init];
	request6.naturalLanguageQuery = naturalLanguageQuery;
	request6.region = region;
	
	MKLocalSearch *search = [[MKLocalSearch alloc] initWithRequest:request6];
	[search startWithCompletionHandler:^(MKLocalSearchResponse *response, NSError *error)
	 {
		 if(error == nil)
			 completition(response);
		 else
			 completition(nil);
	 }];
	
#endif
}

@end
