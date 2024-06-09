//
//  ViewModel.swift
//  DHApp
//
//  Created by Ong Eason on 9/6/2024.
//

import Foundation
import SwiftUI



@Observable
class MenuViewModel: ObservableObject {
    var foods: [MenuItem]
    
    init(foods:[MenuItem] = []){
        self.foods = foods
    }
    
    
}
struct MenuItem: Identifiable {
    let id = UUID()
    let nameOfMeal: String
    let date: String
    let mealType: String
    let image: String
    let ingredients: String
    let calories: String
    let hasAllergens: Bool
}


let First = MenuItem(nameOfMeal: "Egg benedict", date: "september", mealType: "Dinner", image: "hi", ingredients: "No", calories: "150", hasAllergens: true)
