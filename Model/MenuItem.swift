import Foundation

// Define the MenuItem struct
struct MenuItem: Identifiable, Codable {
    var id: Int?
    let nameOfMeal: String
    let dateOfFood: Date
    let mealType: String
    let image: String
    let ingredients: String
    let calories: String
    let hasAllergens: Bool
    let allergens: String?
}
func formatDate(_ date: Date) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd-MM-yyyy" 
    return dateFormatter.string(from: date)
}

let breakfast = MenuItem(
    nameOfMeal: "Egg Benedict",
    dateOfFood: Date(),
    mealType: "Breakfast",
    image: "egg_benedict.jpg",
    ingredients: "Eggs, Ham, English Muffin, Hollandaise Sauce",
    calories: "250",
    hasAllergens: true,
    allergens: "Egg, Dairy"
)

let lunch = MenuItem(
    nameOfMeal: "Sandwich",
    dateOfFood: Date(),
    mealType: "Lunch",
    image: "sandwich.jpg",
    ingredients: "Bread, Cheese, Bacon, Lettuce, Tomato",
    calories: "500",
    hasAllergens: false,
    allergens: nil
)

// Create an example menu
let exampleMenu = [breakfast, lunch]
