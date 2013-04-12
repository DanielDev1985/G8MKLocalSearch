//
//  ViewController.m
//  G8MKLocalSearch
//
//  Created by Daniele on 12/04/13.
//  Copyright (c) 2013 Daniele Galiotto - www.g8production.com. All rights reserved.
//

#import "ViewController.h"
#import "G8MKLocalSearch.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UISearchBarDelegate
-(void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
	[G8MKLocalSearch localSearchRequest:searchBar.text inRegion:self.map.region completition:^(id result) {
		//your completition code.
		//for iOS >= 6.1, result is a MKLocalSearchResponse Object;
		//for iOS < 6.1, result is a JSON (NSDictionary) from Google.
		NSLog(@"%@", result);
	}];
}

@end
