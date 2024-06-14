//
//  Staff.swift
//  DHApp
//
//  Created by Ong Eason on 12/6/2024.
//

import Foundation

struct Staff: Identifiable, Codable{
    //MARK: Stored properties
    var id: Int?
    let first_name: String
    let last_name: String
    let email: String
}
