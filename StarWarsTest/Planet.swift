//
//  Planet.swift
//  StarWarsTest
//
//  Created by Emmanuel Casañas Cruz on 7/15/17.
//  Copyright © 2017 Emmanuel. All rights reserved.
//

import Foundation

class Planet : NSObject {
	
	var name : String
	var rotation_period : String
	var orbital_period: String
	var diameter : String
	var climate : String
	var gravity:String
	var terrain: String
	var surface_water:String
	var population : String
	var residents : [String]
	var films : [String]
	var created : String
	var edited : String
	var url : String
	
	
	init(dictionary: Dictionary<String, AnyObject>) {
		name = dictionary["name"] as? String ?? ""
		rotation_period = dictionary["rotation_period"] as? String ?? ""
		orbital_period = dictionary["orbital_period"] as? String ?? ""
		diameter = dictionary["diameter"] as? String ?? ""
		climate = dictionary["climate"] as? String ?? ""
		gravity = dictionary["gravity"] as? String ?? ""
		terrain = dictionary["terrain"] as? String ?? ""
		surface_water = dictionary["surface_water"] as? String ?? ""
		population = dictionary["population"] as? String ?? ""
		residents = dictionary["residents"] as? [String] ?? []
		films = dictionary["films"] as? [String] ?? []
		created = dictionary["created"] as? String ?? ""
		edited = dictionary["edited"] as? String ?? ""
		url = dictionary["url"] as? String ?? ""
	}
}
