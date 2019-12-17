//
//  Drink.swift
//  Landrover
//
//  Created by James on 12/17/19.
//  Copyright © 2019 James. All rights reserved.
//

import Foundation

struct Rover: Hashable, Codable, Identifiable {
    var id:Int
    var name: String
    var imageName: String
    var condition: Condition
    var description: String
    
    enum Condition: String, CaseIterable, Codable, Hashable{
        case new = "new"
        case facelift = "facelist"
    }
}
