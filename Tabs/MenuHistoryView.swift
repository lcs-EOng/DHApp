//
//  MenuHistoryView.swift
//  DHApp
//
//  Created by Ong Eason on 6/6/2024.
//

import SwiftUI



struct BMenu: View {
    @State private var presentingNewItemSheet = false
    @State var searchText = ""
    @State var menus : [MenuItem] = exampleMenu
    @State private var meal = 1


    
    var body: some View {
        NavigationView {
            List(menus) { item in
                NavigationLink(destination: MenuDetailView(menuDetail: item.nameOfMeal)) {
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
            .navigationTitle("Breakfast Menus")
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
    
    }

#Preview {
    BMenu( menus: [breakfast]).environment(MenuViewModel())
}
