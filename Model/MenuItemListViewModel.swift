//
//  MenuItemListViewModel.swift
//  DHApp
//
//  Created by Ong Eason on 12/6/2024.
//

import Foundation

@Observable
class MenuItemListViewModel: Observable{
    //MARK: Stored Properties
    var staffs: [Staff] = []
    var staffsWithFoodItem: [StaffFoodItem]
    
    //MARK: Initializers
    init(){
        
        self.staffs = []
        self.staffsWithFoodItem = []
        //Get staffs from database
        Task{ do{
            try await getStaffs()
            
        }
            
        }
        
        
        //MARK: Functions
        @Sendable func getStaffs() async throws{
            do{
                let results: [StaffFoodItem] = try await supabase
                    .from("staff")
                    .select("id, first_name, last_name, email, food_items(id, name, calories, ingredients, allergens, allergies)")
                    .execute()
                    .value
                
                self.staffsWithFoodItem = results
            }catch{
                debugPrint(error)
            }
        }
    }
    
}
