//
//  StaffFoodItem.swift
//  DHApp
//
//  Created by Ong Eason on 12/6/2024.
//

import Foundation

struct StaffFoodItem: Identifiable, Codable{
    
    //MARK: Computed properties
    let id: Int
    let name: String
    let staff: [MenuItems]
    
    struct MenuItems: Identifiable, Codable{
        let id: Int
        let name: String
    }
}
