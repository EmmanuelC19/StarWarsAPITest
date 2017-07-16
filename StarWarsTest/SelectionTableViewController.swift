//
//  SelectionTableViewController.swift
//  StarWarsTest
//
//  Created by Emmanuel Casañas Cruz on 7/13/17.
//  Copyright © 2017 Emmanuel. All rights reserved.
//

import UIKit
import SVProgressHUD
import DZNEmptyDataSet

class SelectionTableViewController: UITableViewController,DZNEmptyDataSetSource,DZNEmptyDataSetDelegate {
	
	var selection = ""
	var dataSource:[Any] = []
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		self.addLogoToNavigationBar()
		refreshInfo()
		
		self.tableView.emptyDataSetSource = self
		self.tableView.emptyDataSetDelegate = self
		self.tableView.rowHeight = UITableViewAutomaticDimension;
		tableView.tableFooterView = UIView()
		
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	// MARK: - Table view data source
	
	override func numberOfSections(in tableView: UITableView) -> Int {
		// #warning Incomplete implementation, return the number of sections
		return 1
	}
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		// #warning Incomplete implementation, return the number of rows
		return dataSource.count
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		
		
		switch self.selection {
		case "Films":
			let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as! MovieTableViewCell
			let movieInfo = dataSource[indexPath.row] as! Movie
			
			cell.title.text  = movieInfo.title
			cell.episode.text =  "Episode: " + String(movieInfo.episode_id)
			cell.crawl.text =  movieInfo.opening_crawl
			cell.director.text = "Director: " + movieInfo.director
			cell.producer.text = "Producer: " + movieInfo.producer
			cell.releaseDate.text = "Release date : " + movieInfo.release_date
			
			return cell
		case "People":
			let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath) as! PeopleCell
			let personInfo = dataSource[indexPath.row] as! Person
			
			cell.name.text  = personInfo.name
			cell.height.text =  "height:" + personInfo.height
			cell.mass.text = "mass:" + personInfo.mass
			cell.hairColor.text = "hair color: " + personInfo.hair_color
			cell.skinColor.text = "skin color: " + personInfo.skin_color
			cell.birthYear.text = "birth year: " + personInfo.birth_year
			cell.gender.text = "gender: " + personInfo.gender
			
			return cell
			
		case "Planets" :
			let cell = tableView.dequeueReusableCell(withIdentifier: "planetCell", for: indexPath) as! PlanetCell
			let planetInfo = dataSource[indexPath.row] as! Planet
			
			cell.name.text  = planetInfo.name
			cell.rotation.text = "rotation: " + planetInfo.rotation_period
			cell.orbitalPeriod.text = "orbital period:" + planetInfo.orbital_period
			cell.diameter.text = "diameter: " + planetInfo.diameter
			cell.gravity.text = "gracity: " + planetInfo.gravity
			cell.terrain.text = "terrain: " + planetInfo.terrain
			cell.population.text = "population: " + planetInfo.population
			
			return cell
			
		case "Starships" :
			let cell = tableView.dequeueReusableCell(withIdentifier: "starshipsCell", for: indexPath) as! StarshipsCell
			let starshipInfo = dataSource[indexPath.row] as! Starship
			
			cell.name.text  = starshipInfo.name
			cell.model.text = "model: " + starshipInfo.model
			cell.manufacturer.text = "manufacturer: " + starshipInfo.manufacturer
			cell.cost.text = "cost: " + starshipInfo.cost_in_credits
			cell.length.text = "length: " + starshipInfo.length
			cell.atmosphering.text = "max atmosphering speed: " + starshipInfo.max_atmosphering_speed
			cell.crew.text = "crew: " + starshipInfo.crew
			cell.passengers.text = "passengers: " + starshipInfo.passengers
			return cell
			
		default:
			let cell = tableView.dequeueReusableCell(withIdentifier: "selectionCell", for: indexPath) as! PeopleCell
			return cell
		}
	}
	
	
	override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		switch selection {
		case "Films":
			return 200
		case "People":
			return 180
		case "Planets":
			return  250
		case "Starships":
			return 250
		default:
			return 200
		}
	}
	
	func refreshInfo(){
		SVProgressHUD.show(withStatus: "Getting " + selection + " information...")
		LibraryAPI.sharedInstance.getInfoFor(section: section(rawValue: selection)!, index: nil, Success: { (response) in
			SVProgressHUD.showSuccess(withStatus: "OK")
			
			switch self.selection {
			case "Films":
				let result = (response as AnyObject) as! MovieResponse
				self.dataSource = result.result
				break
			case "People":
				let result = (response as AnyObject) as! PersonResponse
				self.dataSource = result.result
				break
			case "Planets":
				let result = (response as AnyObject) as! PlanetResponse
				self.dataSource = result.result
				break
			case "Starships":
				let result = (response as AnyObject) as! StarshipResponse
				self.dataSource = result.result
			default:
				break
			}
			
			DispatchQueue.main.async {
				self.tableView.reloadData()
			}
			
		}) { (error) in
			SVProgressHUD.showError(withStatus: "Error")
			print(error)
		}
	}
	
	//Mark : Empry Data Source
	
	func image (forEmptyDataSet scrollView: UIScrollView) -> UIImage {
		return UIImage(named: "empty_table")!
	}
	
	func  title(forEmptyDataSet scrollView: UIScrollView!) -> NSAttributedString! {
		return NSAttributedString.init(string: "¡Ups!")
	}
	
	func description(forEmptyDataSet scrollView: UIScrollView!) -> NSAttributedString! {
		return NSAttributedString.init(string: "That's not the info you are looking for")
	}
	
	func buttonTitle(forEmptyDataSet scrollView: UIScrollView!, for state: UIControlState) -> NSAttributedString! {
		
		let attrString = NSAttributedString (
			string: "Try again",
			attributes: [NSForegroundColorAttributeName: UIColor.white])
		
		return attrString
	}
	
	//	func buttonBackgroundImage(forEmptyDataSet scrollView: UIScrollView!, for state: UIControlState) -> UIImage! {
	//		return self.getImageWithColor(color: GlobalConstants.kColor_Red_Coca, size: CGSize(width: 300, height: 50))
	//	}
	
	func emptyDataSet(_ scrollView: UIScrollView!, didTap button: UIButton!) {
		//getHistoryInfo()
	}
	
	
}
