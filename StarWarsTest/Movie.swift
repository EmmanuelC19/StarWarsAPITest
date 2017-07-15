//
//  Movie.swift
//  StarWarsTest
//
//  Created by Emmanuel Casañas Cruz on 7/15/17.
//  Copyright © 2017 Emmanuel. All rights reserved.
//

import Foundation

class Movie : NSObject {
	
	var title : String
	var episode_id : Int
	var opening_crawl: String
	var director : String
	var producer : String
	var release_date : String
	var characters : [Person]
	var planets : [String]
	var starships: [String]
	var vehicles : [String]
	var species : [String]
	var created : String
	var edited : String
	var url : String
	
	
	init(dictionary: Dictionary<String, AnyObject>) {
		title = dictionary["title"] as? String ?? ""
		episode_id = dictionary["episode_id"] as? Int ?? 0
		opening_crawl = dictionary["opening_crawl"] as? String ?? ""
		director = dictionary["director"] as? String ?? ""
		producer = dictionary["producer"] as? String ?? ""
		release_date = dictionary["release_date"] as? String ?? ""
		characters = Utils.getArrayOfPersons(dictionary: dictionary["characters"] as? [Dictionary<String, AnyObject>] ?? [])
		planets = dictionary["planets"] as? [String] ?? []
		species = dictionary["species"] as? [String] ?? []
		starships = dictionary["starships"] as? [String] ?? []
		vehicles = dictionary["vehicles"] as? [String] ?? []
		created = dictionary["created"] as? String ?? ""
		edited = dictionary["edited"] as? String ?? ""
		url = dictionary["url"] as? String ?? ""
	}
}
