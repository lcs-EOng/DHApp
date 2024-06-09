//
//  MenuHistoryView.swift
//  DHApp
//
//  Created by Ong Eason on 6/6/2024.
//

import SwiftUI

struct DMenu: View {
    @State private var meal = 1
    @State var presentingNewItemSheet = false
    @State var searchText = ""
    @Environment(MenuViewModel.self) var viewModel


    
    var body: some View {
        NavigationView {
            List(viewModel.foods) { item in
                NavigationLink(destination: MenuDetailView(menuDetail: item.nameOfMeal)) {
                    VStack(alignment: .leading) {
                        Text("\(item.date): \(item.mealType)")
                            .font(.headline)
                        Text(item.nameOfMeal)
                    }
                    .contentShape(Rectangle())
                }
            }
            .searchable(text: $searchText)
            .navigationTitle("Dinner Menus")
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
}
#Preview {
    NewItemView(showSheet: .constant(true)).environment(MenuViewModel())
}
