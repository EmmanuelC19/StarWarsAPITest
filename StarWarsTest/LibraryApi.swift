//
//  LibraryApi.swift
//  StarWarsTest
//
//  Created by Emmanuel Casañas Cruz on 7/13/17.
//  Copyright © 2017 Emmanuel. All rights reserved.
//


import Foundation
import SVProgressHUD

class LibraryAPI {
	
	static let sharedInstance = LibraryAPI()
	
	
	func getPeople(Success onSuccess:@escaping (PersonResponse) -> (), onError:@escaping (String) -> ()) {
		
		HTTPClient.sharedInstance.doRequest(method: "people/", type: "GET", parameters: [:], onSuccess: { (data) in
			if let serviceResponse = data as? Dictionary<String, AnyObject> {
				let response = PersonResponse(dictionary: serviceResponse)
				onSuccess(response)

			} else {
				onError("Error al serializar elemento.")
			}
			
		}, onError: {(error) in
			onError(error.description)
		})
	}
	
	
}
