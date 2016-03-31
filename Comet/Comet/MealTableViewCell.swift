//
//  WeekTableViewCell.swift
//  Comet
//
//  Created by Andre Plaut on 3/30/16.
//  Copyright © 2016 Andre Plaut. All rights reserved.
//

import UIKit

class WeekTableViewCell: UITableViewCell {
    
    // MARK: Properties
    
    @IBOutlet weak var accomplishmentOneLabel: UILabel!
    @IBOutlet weak var accomplishmentTwoLabel: UILabel!
    @IBOutlet weak var accomplishmentThreeLabel: UILabel!

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}
