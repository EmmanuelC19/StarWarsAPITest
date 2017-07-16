//
//  Utils.swift
//  StarWarsTest
//
//  Created by Emmanuel Casañas Cruz on 7/13/17.
//  Copyright © 2017 Emmanuel. All rights reserved.
//

import Foundation


public class Utils {
	
	class func getArrayOfPersons (dictionary : [Dictionary<String, AnyObject>]) -> [Person] {
		var personsArray : [Person] = []
		var person : Person
		for element in dictionary {
			person = Person(dictionary: element)
			personsArray.append(person)
		}
		
		return personsArray
	}
	
	class func getArrayOfMovies (dictionary : [Dictionary<String, AnyObject>]) -> [Movie] {
		var movieArray : [Movie] = []
		var movie : Movie
		for element in dictionary {
			movie = Movie(dictionary: element)
			movieArray.append(movie)
		}
		
		return movieArray
	}
	
	class func getArrayOfPlanets (dictionary : [Dictionary<String, AnyObject>]) -> [Planet] {
		var planetArray : [Planet] = []
		var planet : Planet
		for element in dictionary {
			planet = Planet(dictionary: element)
			planetArray.append(planet)
		}
		
		return planetArray
	}
	
	class func getArrayOfStarships (dictionary : [Dictionary<String, AnyObject>]) -> [Starship] {
		var starshipArray : [Starship] = []
		var starship : Starship
		for element in dictionary {
			starship = Starship(dictionary: element)
			starshipArray.append(starship)
		}
		
		return starshipArray
	}
	
	class func getArrayOfVehicles (dictionary : [Dictionary<String, AnyObject>]) -> [Vehicle] {
		var vehicleipArray : [Vehicle] = []
		var vehicle : Vehicle
		for element in dictionary {
			vehicle = Vehicle(dictionary: element)
			vehicleipArray.append(vehicle)
		}
		
		return vehicleipArray
	}
	

}
