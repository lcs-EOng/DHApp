import Foundation

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

let bFast = MenuItem(nameOfMeal: "Egg benedict", date: "september", mealType: "Dinner", image: "hi", ingredients: "No", calories: "150", hasAllergens: true)
let lunch = MenuItem(nameOfMeal: "Sandwich", date: "lunch", mealType: "lunch", image: "nil", ingredients: "bread, cheese, bacon", calories: "500", hasAllergens: false)
let exampleMenu = [
    bFast,
    lunch
    
]
