//
//  MenuListView.swift
//  DHApp
//
//  Created by Ong Eason on 13/6/2024.
//

import SwiftUI

struct MenuListView: View {
    //MARK: Stored Properties
    let staff: StaffFoodItem
    //MARK: Computed properties
    var body: some View {
        List(staff.foodItem) { foodItem in
            Text(foodItem.name)
        }
        .navigationTitle("\(staff.first_name) \(staff.last_name)")

        
    }
}


