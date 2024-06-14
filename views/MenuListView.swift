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
    @State private var isShowing = false
    
    //MARK: Computed properties
    var body: some View {
        List(staff.foodItem) { foodItem in
            Text(foodItem.name)
        }
        .sheet(isPresented: $isShowing){
            AddFoodItemView(
                isShwoing: $isShowing,
                currentStaff: staff
                )
            .presentationDetents([.fraction(0.2)])
        }
        .toolbar{
            ToolbarItem{
                Button{
                    isShowing = true
                } label:{
                    Image(systemName: "plus")
                }
            }
        }
        .navigationTitle("Food Item")

        
    }
}


