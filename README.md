G8MKLocalSearch
===============

G8MKLocalSearch is a simple search class to search addresses, places, cities, etc... in iOS6 >= or iOS &lt; 6.

iOS6 => return a MKLocalSearchResponse Object
iOS5 => return a JSON (NSDictinary) from Google

Require the MapKit and CoreLocation framework.

Change your deployment target for switch between iOS5 and iOS>=6


Usage
===============

Copy G8MKLocalSearch.h and G8MKLocalSearch.m into your project.

Import the G8MKLocalSearch.h into your class with #import "G8MKLocalSearch.h"

Call the localSearchRequest method like below.

<pre>
  [G8MKLocalSearch localSearchRequest:searchBar.text inRegion:self.map.region completition:^(id result) {
		//your completition code.
		//for iOS >= 6, result is a MKLocalSearchResponse Object;
		//for iOS &lt; 5, result is a JSON (NSDictionary) from Google.
		NSLog(@"%@", result);
	}];
</pre>

Note from Google: the Geocoding API may only be used in conjunction with a Google map; geocoding results without displaying them on a map is prohibited. For complete details on allowed usage, consult the Maps API Terms of Service License Restrictions.


Author Infos
===============

Daniele Galiotto 
<a href="http://www.g8production.com">www.g8production.com</a>


Copyright & License
===============

Copyright Daniele Galiotto - g8production 2013

Released under the MIT License http://opensource.org/licenses/MIT
