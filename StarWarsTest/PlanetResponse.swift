//
//  PlanetResponse.swift
//  StarWarsTest
//
//  Created by Emmanuel Casañas Cruz on 7/15/17.
//  Copyright © 2017 Emmanuel. All rights reserved.
//

import Foundation

class PlanetResponse: NSObject {
	
	var count : Int
	var next : String
	var previous: String
	var result :[Planet]
	
	init(dictionary: Dictionary<String, AnyObject>) {
		count = dictionary["count"] as? Int ?? 0
		next = dictionary["next"] as? String ?? ""
		previous = dictionary["previous"] as? String ?? ""
		result = Utils.getArrayOfPlanets(dictionary: dictionary["results"] as! [Dictionary<String, AnyObject>])
	}
	
	
	
}
