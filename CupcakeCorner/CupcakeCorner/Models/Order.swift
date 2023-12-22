//
//  Order.swift
//  CupcakeCorner
//
//  Created by OLEKSANDR ISAIEV on 22.12.2023.
//

import Foundation

@Observable
class Order {
    static let types = ["Vanilla", "Strawberry", "Chocolate", "Raindow"]
    
    var type = 0
    var quantity = 3

    var specialRequestEnabled = false
    var extraFrosting = false
    var addSprinkles = false
}
