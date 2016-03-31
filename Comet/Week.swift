//
//  Week.swift
//  Comet
//
//  Created by Andre Plaut on 3/30/16.
//  Copyright © 2016 Andre Plaut. All rights reserved.
//

import UIKit

class Week {
    
    // MARK: Properties
    
    var accomplishmentOne: String
    var accomplishmentTwo: String
    var accomplishmentThree: String
    
    // MARK: Initialization
    
    init?(accomplishmentOne: String, accomplishmentTwo: String, accomplishmentThree: String) {
        // Initiatlize stored properties.
        self.accomplishmentOne = accomplishmentOne
        self.accomplishmentTwo = accomplishmentTwo
        self.accomplishmentThree = accomplishmentThree
        
        // Initialization should fail if there is no name.
        if accomplishmentOne.isEmpty && accomplishmentTwo.isEmpty && accomplishmentThree.isEmpty {
            return nil
        }
    }
    
}
