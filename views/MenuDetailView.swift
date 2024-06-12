//
//  MenuDetailView.swift
//  DHApp
//
//  Created by Ong Eason on 7/6/2024.
//

import SwiftUI

struct MenuDetailView: View {
    //MARK: Stored properties
    let menuDetail: MenuItem

    //MARK: Computed properties
    var body: some View {
        NavigationView{
            VStack{
                
                Text(menuDetail.nameOfMeal)
                    .font(.title)
                    .bold()
                Text("Calories:  \(menuDetail.calories)")
                    .padding()
                Text("Ingridients:  \(menuDetail.ingredients)")
                    .padding()
                Text("Date Served:  \(formatDate(menuDetail.dateOfFood))")
                    .padding()
                if menuDetail.hasAllergens == true{
                    VStack{
                        Text("Food has allergens")
                            .foregroundStyle(.red)
                            .bold()
                        if let allergens = menuDetail.allergens{
                            Text("Allergens: \(allergens)")
                        }
                    }}else
                {
                    Text("Food has no Allergens")
                        .foregroundStyle(.green)
                }
                
            }
        }
        .navigationTitle("Menu Detail")
        .navigationBarTitleDisplayMode(.inline)
    }
   
}


#Preview {
    MenuDetailView(menuDetail: breakfast)
}
