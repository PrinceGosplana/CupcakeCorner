//
//  User.swift
//  CupcakeCorner
//
//  Created by OLEKSANDR ISAIEV on 21.12.2023.
//

import Foundation

@Observable
class User: Codable {
    var name = "Taylor"
    
    enum CodingKeys: String, CodingKey {
        case _name = "name"
    }
}
