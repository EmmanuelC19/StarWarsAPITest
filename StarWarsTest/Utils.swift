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
	

}
