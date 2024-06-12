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
    @State var menus : [MenuItem] = exampleMenu
    @State private var meal = 1
    //So the sheet is hidden
    @State private var presentingNewItemSheet = false

    
    
    //MARK: Computed properties
    var body: some View {
        NavigationView {
            List(menus) { item in
                NavigationLink(destination: MenuDetailView(menuDetail: item)) {
                    VStack(alignment: .leading) {
                        Text("\(formatDate(item.dateOfFood)): \(item.mealType)")
                            .font(.headline)
                            .font(.headline)
                        Text(item.nameOfMeal)
                        if item.hasAllergens == true{
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
                NewItemView(menus: $menus, showSheet: $presentingNewItemSheet)
                
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
    LMenu( menus: [breakfast]).environment(MenuViewModel())
}
