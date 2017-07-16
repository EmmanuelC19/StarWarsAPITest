//
//  StarshipsCell.swift
//  StarWarsTest
//
//  Created by Emmanuel Casañas Cruz on 7/15/17.
//  Copyright © 2017 Emmanuel. All rights reserved.
//

import UIKit

class StarshipsCell: UITableViewCell {
	
	@IBOutlet weak var name: UILabel!
	@IBOutlet weak var model: UILabel!
	@IBOutlet weak var manufacturer: UILabel!
	@IBOutlet weak var cost: UILabel!
	@IBOutlet weak var length: UILabel!
	@IBOutlet weak var atmosphering: UILabel!
	@IBOutlet weak var crew: UILabel!
	@IBOutlet weak var passengers: UILabel!
	

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
