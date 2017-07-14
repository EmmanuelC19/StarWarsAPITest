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
	var dataSource = [String]()
	

    override func viewDidLoad() {
        super.viewDidLoad()
		requestInfoForSelection()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
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
			print(response)
		}) { (error) in
			SVProgressHUD.showError(withStatus: "Error")
			print(error)
		}
	}

}
