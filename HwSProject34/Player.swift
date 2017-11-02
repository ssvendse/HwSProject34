//
//  Player.swift
//  HwSProject34
//
//  Created by Skyler Svendsen on 11/1/17.
//  Copyright © 2017 Skyler Svendsen. All rights reserved.
//

import UIKit
import GameplayKit

class Player: NSObject, GKGameModelPlayer {
    var chip: ChipColor
    var color: UIColor
    var name: String
    var playerId: Int
    
    static var allPlayer = [Player(chip: .red), Player(chip: .black)]
    
    init(chip: ChipColor) {
        self.chip = chip
        self.playerId = chip.rawValue
        
        if chip == .red {
            color = .red
            name = "Red"
        } else {
            color = .black
            name = "Black"
        }
        
        super.init()
    }
    
    var opponent: Player {
        if chip == .red {
            return Player.allPlayer[1]
        } else {
            return Player.allPlayer[0]
        }
    }
}
