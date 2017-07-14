//
//  SelectionTableViewController.swift
//  StarWarsTest
//
//  Created by Emmanuel Casañas Cruz on 7/13/17.
//  Copyright © 2017 Emmanuel. All rights reserved.
//

import UIKit
import SVProgressHUD

class SelectionTableViewController: UITableViewController {
	
	var selection = ""
	var dataSource:[Person] = []
	

    override func viewDidLoad() {
        super.viewDidLoad()
		self.addLogoToNavigationBar()
		requestInfoForSelection()

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
		
		let cell = tableView.dequeueReusableCell(withIdentifier: "selectionCell", for: indexPath)
		let personInfo = dataSource[indexPath.row]
		
		cell.textLabel?.text = personInfo.name
		
		return cell
	}
	
	func requestInfoForSelection(){
		switch selection {
		case "Peliculas":
			getPeopleInfo()
		case "Personajes":
			getPeopleInfo()
		default:
			break
		}
	}
	
	func getPeopleInfo(){
		SVProgressHUD.show(withStatus: "Obteniendo personajes...")
		LibraryAPI.sharedInstance.getPeople(Success: { (response) in
			SVProgressHUD.showSuccess(withStatus: "OK")
			self.dataSource = response.result
			DispatchQueue.main.async {
				self.tableView.reloadData()
			}
		}) { (error) in
			SVProgressHUD.showError(withStatus: "Error")
			print(error)
		}
	}

}
