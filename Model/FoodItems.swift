//
//  FoodItems.swift
//  DHApp
//
//  Created by Ong Eason on 13/6/2024.
//

import Foundation

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
    let calories: Int
    let ingredients: String
    }

enum CodingKeys: String, CodingKey{
    case id
   case name
    case staffId = "staff_id"
    case calories
    case ingredients
}

