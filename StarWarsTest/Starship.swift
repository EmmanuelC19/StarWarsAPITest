//
//  Starship.swift
//  StarWarsTest
//
//  Created by Emmanuel Casañas Cruz on 7/15/17.
//  Copyright © 2017 Emmanuel. All rights reserved.
//

import Foundation

class Starship : NSObject {
	
	var name : String
	var model : String
	var manufacturer: String
	var cost_in_credits : String
	var length : String
	var max_atmosphering_speed:String
	var crew: String
	var passengers:String
	var cargo_capacity : String
	var consumables : String
	var hyperdrive_rating : String
	var MGLT: String
	var starship_class: String
	var pilots : [String]
	var films : [String]
	var created : String
	var edited : String
	var url : String
	
	
	init(dictionary: Dictionary<String, AnyObject>) {
		name = dictionary["name"] as? String ?? ""
		model = dictionary["model"] as? String ?? ""
		manufacturer = dictionary["manufacturer"] as? String ?? ""
		cost_in_credits = dictionary["cost_in_credits"] as? String ?? ""
		length = dictionary["length"] as? String ?? ""
		max_atmosphering_speed = dictionary["max_atmosphering_speed"] as? String ?? ""
		crew = dictionary["crew"] as? String ?? ""
		passengers = dictionary["passengers"] as? String ?? ""
		cargo_capacity = dictionary["cargo_capacity"] as? String ?? ""
		consumables = dictionary["consumables"] as? String ?? ""
		hyperdrive_rating = dictionary["hyperdrive_rating"] as? String ?? ""
		MGLT = dictionary["MGLT"] as? String ?? ""
		starship_class = dictionary["starship_class"] as? String ?? ""
		pilots = dictionary["pilots"] as? [String] ?? []
		films = dictionary["films"] as? [String] ?? []
		created = dictionary["created"] as? String ?? ""
		edited = dictionary["edited"] as? String ?? ""
		url = dictionary["url"] as? String ?? ""
	}
}
