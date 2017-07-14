//
//  Person.swift
//  StarWarsTest
//
//  Created by Emmanuel Casañas Cruz on 7/13/17.
//  Copyright © 2017 Emmanuel. All rights reserved.
//

import Foundation

class Person : NSObject {
	
	var name : String
	var height : String
	var mass: String
	var hair_color : String
	var skin_color : String
	var eye_color : String
	var birth_year : String
	var gender : String
	var homeworold : String
	var films : [String]
	var species: [String]
	var vehicles : [String]
	var starships : [String]
	var created : String
	var edited : String
	var url : String
	
	
	init(dictionary: Dictionary<String, AnyObject>) {
		name = dictionary["name"] as? String ?? ""
		height = dictionary["height"] as? String ?? ""
		mass = dictionary["mass"] as? String ?? ""
		hair_color = dictionary["hair_color"] as? String ?? ""
		skin_color = dictionary["skin_color"] as? String ?? ""
		eye_color = dictionary["eye_color"] as? String ?? ""
		birth_year = dictionary["birth_year"] as? String ?? ""
		gender = dictionary["gender"] as? String ?? ""
		homeworold = dictionary["homeworold"] as? String ?? ""
		films = dictionary["films"] as? [String] ?? []
		species = dictionary["species"] as? [String] ?? []
		vehicles = dictionary["vehicles"] as? [String] ?? []
		starships = dictionary["starships"] as? [String] ?? []
		created = dictionary["created"] as? String ?? ""
		edited = dictionary["edited"] as? String ?? ""
		url = dictionary["url"] as? String ?? ""

	}
}
