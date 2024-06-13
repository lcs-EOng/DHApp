//
//  FoodItem.swift
//  DHApp
//
//  Created by Ong Eason on 13/6/2024.
//

import Foundation

struct FoodItem: Identifiable, Codable {
    //MARK: Stored Properties
    var id: Int?
    let name: String
    let staffId: Int
    }

enum CodingKeys: String, CodingKey{
    case id
   case name
    case staffId = "staff_id"
}

