//
//  MenuHistoryView.swift
//  DHApp
//
//  Created by Ong Eason on 6/6/2024.
//

import SwiftUI



struct LMenu: View {
    //MARK: Stored properties
    @State var searchText = ""
    @State var meal = 1
    //So the sheet is hidden
    @State  var presentingNewItemSheet = false
    //The View Model
    @State var viewModel = MenuViewModel()

    
    
    //MARK: Computed properties
    var body: some View {
        NavigationView {
            List($viewModel.menusWithProperties) { $food in
                NavigationLink(destination: MenuDetailView(menuDetail: food)) {
                    VStack(alignment: .leading) {
                        Text("\(formatDate(food.dateOfFood)): \(food.mealType)")
                            .font(.headline)
                            .font(.headline)
                        Text(food.nameOfMeal)
                        if food.hasAllergens == true{
                            Text("Food has allergens")
                        } else
                        {
                            Text("No allergens")
                        }
                    }
                    .contentShape(Rectangle())
                }
            }
            .searchable(text: $searchText)
            .navigationTitle("Lunch Menus")
            .sheet(isPresented: $presentingNewItemSheet) {
                NewItemView(showSheet: $presentingNewItemSheet)
                
            }
            
            .toolbar {
                // Add a button to trigger showing the sheet
                ToolbarItem(placement: .automatic) {
                    Button {
                        presentingNewItemSheet = true
                    } label: {
                        Image(systemName: "plus")
                    }
                    
                }
            }
            
            
        }
    }
    //MARK: Functions
    func filter(menus: [MenuItem], on providedText : String) -> [MenuItem]{
        if providedText.isEmpty{
            return menus
        }else{
            var filteredMenus: [MenuItem] = []
            
            for menu in filteredMenus {
                if menu.nameOfMeal.contains(providedText){
                    filteredMenus.append(menu)
                }
                
            }
            return filteredMenus
        }
    }
    
}

#Preview {
    LMenu().environment(MenuViewModel())
}
