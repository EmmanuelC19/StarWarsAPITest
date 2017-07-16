//
//  LibraryApi.swift
//  StarWarsTest
//
//  Created by Emmanuel Casañas Cruz on 7/13/17.
//  Copyright © 2017 Emmanuel. All rights reserved.
//


import Foundation
import UIKit
import SVProgressHUD

enum section : String {
	case movies = "Films"
	case people = "People"
	case planet = "Planets"
	case starships = "Starships"
	case vehicles = "Vehicles"
	
	var value: String {
		return self.rawValue
	}
	
}

class LibraryAPI {
	
	static let sharedInstance = LibraryAPI()
	
	

	
	
	func getInfoFor(section: section, index: Int?, Success onSuccess:@escaping (Any) -> (), onError:@escaping (String) -> ()) {
		
		var method = (section.rawValue + "/").lowercased()
		
		if (index != nil) {
			method = (section.rawValue + "/" + String(describing: index) + "/").lowercased()
		}
		
		
		HTTPClient.sharedInstance.doRequest(method: method, type: "GET", parameters: [:], onSuccess: { (data) in
			if let serviceResponse = data as? Dictionary<String, AnyObject> {
				switch section {
				case .movies:
					let response = MovieResponse(dictionary: serviceResponse)
					onSuccess(response)
				case .people:
					let response = PersonResponse(dictionary: serviceResponse)
					onSuccess(response)
				case .planet:
					let response = PlanetResponse(dictionary: serviceResponse)
					onSuccess(response)
				case .starships:
					let response = StarshipResponse(dictionary: serviceResponse)
					onSuccess(response)
				case .vehicles:
					let response = PersonResponse(dictionary: serviceResponse)
					onSuccess(response)
				}

			} else {
				onError("Error al serializar elemento.")
			}
			
		}, onError: {(error) in
			onError(error.description)
		})
	}
	
}
