//
//  Staff+FoodItem.swift
//  DHApp
//
//  Created by Ong Eason on 13/6/2024.
//

import Foundation

struct StaffFoodItem: Identifiable, Codable{
    //MARK: Stored properties
    let id: Int
    let first_name: String
    let last_name: String
    let foodItem: [FoodItem]
    
    enum CodingKeys: String, CodingKey{
        case id
        case first_name
        case last_name
        case foodItem = "food_item"
    }
    
    struct FoodItem: Identifiable, Codable{
        let id:Int
        let name: String
        let calories: Int?
        let ingredients: String
    }
    
}
