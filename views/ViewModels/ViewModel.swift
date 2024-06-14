//
//  ViewModel.swift
//  DHApp
//
//  Created by Ong Eason on 9/6/2024.
//


// ViewModel.swift
// DHApp

import Foundation

@Observable
class MenuViewModel: Observable{
    // MARK: Stored properties
    var menus: [FoodItem] = []
    var menusWithProperties: [MenuItem] = []
    // MARK: Initializer
    init() {
        Task {
            
            try await fetchMenus()
            
        }
        Task{
                try await getMenusWithProperties()
            }
            
        }
    
    
    // MARK: Functions
    func getMenusWithProperties() async throws {
        do {
            let results: [FoodItem] = try await supabase
                .from("food_item")
                .select("id, name, calories, ingredients, allergens, allergies")
                .execute()
                .value
            
            self.menus = results
        } catch {
            debugPrint(error)
        }
    }
    func fetchMenus() async throws {
        do {
            let results: [MenuItem] = try await supabase
                .from("food_item")
                .select()
                .execute()
                .value
            
            self.menusWithProperties = results
        } catch {
            debugPrint(error)
        }
    }
  
    }






