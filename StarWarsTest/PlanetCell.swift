//
//  PlanetCell.swift
//  StarWarsTest
//
//  Created by Emmanuel Casañas Cruz on 7/15/17.
//  Copyright © 2017 Emmanuel. All rights reserved.
//

import UIKit

class PlanetCell: UITableViewCell {
	
	@IBOutlet weak var name: UILabel!
	@IBOutlet weak var rotation: UILabel!
	@IBOutlet weak var orbitalPeriod: UILabel!
	@IBOutlet weak var diameter: UILabel!
	@IBOutlet weak var climate: UILabel!
	@IBOutlet weak var gravity: UILabel!
	@IBOutlet weak var terrain: UILabel!
	@IBOutlet weak var population: UILabel!
	
	

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
