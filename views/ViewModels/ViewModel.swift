//
//  ViewModel.swift
//  DHApp
//
//  Created by Ong Eason on 9/6/2024.
//


// ViewModel.swift
// DHApp
import Storage
import Foundation

@Observable
class MenuViewModel{
    // MARK: Stored properties
    var menus: [FoodItem] = []
    var menusWithProperties: [MenuItem] = []
    // MARK: Initializer
    init(menusWithProperties: [MenuItem] = [], menus: [FoodItem] = []) {
        self.menusWithProperties = menusWithProperties
        self.menus = menus
        Task {
            
            try await fetchItems()
            
        }
        Task{
            try await getMenusWithProperties()
        }
        
    }
    
    
    // MARK: Functions
    func getMenusWithProperties() async throws {
        do {
            let results: [MenuItem] = try await supabase
                .from("food_item")
                .select("id, name, calories, ingredients, allergens, allergies")
                .execute()
                .value
            
            self.menusWithProperties = results
        } catch {
            debugPrint(error)
        }
    }
    func fetchItems() async throws {
        do {
            let results: [FoodItem] = try await supabase
                .from("food_item")
                .select()
                .execute()
                .value
            
            self.menus = results
        } catch {
            debugPrint(error)
        }
    }
    func saveFoodItem(name: String, staffID: Int, meal: Int, calories: Int, ingredients: String) {
        Task{
            let mealTypes = ["Breakfast", "Lunch", "Dinner"]
            let menu = FoodItem(name: name, calories: calories, ingredients: ingredients
            )
            do{
                let newlyInsertedItems: MenuItem = try await supabase
                    .from("food_item")
                    .insert(menu)
                    .select()
                    .single()
                    .execute()
                    .value
                
                
                self.menusWithProperties.append(newlyInsertedItems)
                
            } catch{
                debugPrint(error)
            }
        }
        
    }
}






