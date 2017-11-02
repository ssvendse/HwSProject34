//
//  Move.swift
//  HwSProject34
//
//  Created by Skyler Svendsen on 11/1/17.
//  Copyright © 2017 Skyler Svendsen. All rights reserved.
//

import UIKit
import GameplayKit

class Move: NSObject, GKGameModelUpdate {
    var value: Int = 0
    var column: Int
    
    init(column: Int) {
        self.column = column
    }
    
    
}
