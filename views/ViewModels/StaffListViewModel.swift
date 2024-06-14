//
//  StaffListViewModel.swift
//  DHApp
//
//  Created by Ong Eason on 13/6/2024.
//

import Foundation

@Observable
class StaffListViewModel: Observable{
    //MARK: Stored properties
    var staffs: [Staff] = []
    var staffsWithFoodItem: [StaffFoodItem] = []
    
    //MARK: Initializers
    init(){
        //Get Staffs
        Task{
            try await getStaffs()
        }
        //Get staffs with food item
        Task{
            try await getStaffsWithFoodItem()
        }
    }

    //MARK: Functions
    func getStaffs() async throws{
        do{
            let results: [Staff] = try await supabase
                .from("staff")
                .select()
                .execute()
                .value
            
            self.staffs = results
            
        } catch{
            debugPrint(error)
        }
    }
    func getStaffsWithFoodItem() async throws{
        do{
            let results: [StaffFoodItem] = try await supabase
                .from("staff")
                .select("id, first_name, last_name, food_item(id, name, ingredients, calories, allergens, allergies)")
                .execute()
                .value
            
            self.staffsWithFoodItem = results
            
        } catch{
            debugPrint(error)
        }
    }
    
    func add(foodItem: String, calories: Int, ingredients: String,in staff: StaffFoodItem){
        Task{
            let newFoodItem = FoodItem(name: foodItem, staffId: staff.id, calories: calories, ingredients: ingredients)
            do{
                try await supabase
                    .from("food_item")
                    .insert(newFoodItem)
                    .execute()
                
                try await self.getStaffsWithFoodItem()
            } catch{
                debugPrint(error)
            }
        }
    }
}
