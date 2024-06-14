//
//  AddFoodItemView.swift
//  DHApp
//
//  Created by Ong Eason on 13/6/2024.
//

import SwiftUI

struct AddFoodItemView: View {
    
    //MARK: stored properties
    
    @Binding var isShwoing: Bool
    let currentStaff: StaffFoodItem
    
    @Environment(StaffListViewModel.self) var viewModel
    
    @State private var newFoodItem: String = ""
    @State private var newFoodCalories = Int()
    @State private var newFoodIngredietns: String = ""
    //MARK: Computed properties
    var body: some View {
        NavigationStack{
            Form{
                Section{
                    TextField("Staff", text: $newFoodItem)
                }
            }
            .navigationTitle("New food item")
            .toolbar{
                ToolbarItem(placement: .primaryAction){
                    Button{
                        viewModel.add(foodItem: newFoodItem, calories: newFoodCalories, ingredients: newFoodIngredietns, in: currentStaff)
                        isShwoing = false}
                label:{
                    Text("Add")
                }
                }
            }
            
        }
    }
    
    
}
