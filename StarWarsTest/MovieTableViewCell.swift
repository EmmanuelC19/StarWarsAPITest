//
//  MovieTableViewCell.swift
//  StarWarsTest
//
//  Created by Emmanuel Casañas Cruz on 7/15/17.
//  Copyright © 2017 Emmanuel. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
	
	@IBOutlet weak var title: UILabel!
	@IBOutlet weak var episode: UILabel!
	@IBOutlet weak var crawl: UILabel!
	@IBOutlet weak var director: UILabel!
	@IBOutlet weak var producer: UILabel!
	@IBOutlet weak var releaseDate: UILabel!
	
	

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
