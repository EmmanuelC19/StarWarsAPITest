//
//  PersonResponse.swift
//  StarWarsTest
//
//  Created by Emmanuel Casañas Cruz on 7/13/17.
//  Copyright © 2017 Emmanuel. All rights reserved.
//

import Foundation

class PersonResponse: NSObject {
	
	var count : Int
	var next : String
	var previous: String
	var result :[Person]
	
	init(dictionary: Dictionary<String, AnyObject>) {
		count = dictionary["count"] as? Int ?? 0
		next = dictionary["next"] as? String ?? ""
		previous = dictionary["previous"] as? String ?? ""
		result = Utils.getArrayOfPersons(dictionary: dictionary["results"] as! [Dictionary<String, AnyObject>])
	}
	
	
	
}
