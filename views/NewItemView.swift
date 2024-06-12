//
//  NewItemView.swift
//  DHApp
//
//  Created by Ong Eason on 9/6/2024.
//
import PhotosUI
import SwiftUI

struct NewItemView: View {
    
    // MARK: Stored properties
    @State private var newItemImage: UIImage?
    @State private var nameOfFood = ""
    @State private var ingridients = ""
    @State private var calories = ""
    @State private var isToggleOn = false
    @State private var meal = 0
    @State private var date = Date()
    @State private var allergens = ""
    @Binding var menus: [MenuItem]
    

    
    // Binding to control whether this view is visible
    @Binding var showSheet: Bool
    
    // MARK: Computed properties
    var body: some View {
        NavigationView {
            VStack {
                VStack{
                    Picker("Meals", selection: $meal) {
                        Text("Breakfast").tag(0)
                            .font(.title)
                        
                        Text("Lunch").tag(1)
                            .font(.title)
                        
                        Text("Dinner").tag(2)
                            .font(.title)
                        
                    }
                    .font(.title)
                    Spacer()
                        .frame(height: 10 )
                    DatePicker("Date", selection: $date, displayedComponents: .date)
                        .frame(height: 50)
                        .padding()
                        .background(Rectangle()
                            .fill(Color.green)
                            .shadow(radius: 4)
                            .opacity(0.2))
                        .font(.title)
                    Spacer()
                        .frame(height: 50)
                    TextField("Name of Food", text: $nameOfFood)
                        .font(.title)
                        .bold()
                        .padding(.horizontal)
                        .padding()
                    TextField("What are the ingridients?", text: $ingridients)
                        .padding(.horizontal)
                        .padding()
                    TextField("What is the amount of calories?", text: $calories)
                        .padding(.horizontal)
                        .padding()
                        .keyboardType(.numberPad)
                    HStack{
                        Toggle("Any Allergens?", isOn: $isToggleOn)
                            .padding()
                            .accentColor(Color.green)
                    }
                    if isToggleOn == true{
                        TextField("What are the allergens?", text: $allergens)
                            .padding(.horizontal)
                            .padding()
                    }
                    
                    Spacer()
                        .frame(height: 50)
                    Button("Save Menu") {
                        saveFoodItem(withTitle: nameOfFood)
                        
                        nameOfFood = ""
                        ingridients = ""
                        calories = ""
                        isToggleOn = false
                        showSheet = false
                    }
                    .disabled(nameOfFood.isEmpty == true)
                    .disabled(ingridients.isEmpty == true)
                    .disabled(calories.isEmpty == true)


                    
                    
                }
            }
            
            Spacer()
        }
    }
    
    func saveFoodItem(withTitle title: String) {
       let mealTypes = ["Breakfast", "Lunch", "Dinner"]
               let menuItem = MenuItem(nameOfMeal: nameOfFood, dateOfFood: date, mealType: mealTypes[meal], image: "", ingredients: ingridients, calories: calories, hasAllergens: isToggleOn
               )
        menus.append(menuItem)

    }

    }




#Preview {
    NewItemView(menus: .constant(exampleMenu), showSheet: .constant(true))
        .environment(MenuViewModel())
}
