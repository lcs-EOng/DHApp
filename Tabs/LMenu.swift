//
//  MenuHistoryView.swift
//  DHApp
//
//  Created by Ong Eason on 6/6/2024.
//

import SwiftUI

struct LMenu: View {
    let LMenuHistory = [
            "2024-06-01: ",
            "2024-06-02: ",
            "2024-06-03: ",
        ]
    @State private var selectedMenu: String? = nil
    @State private var meal = 1


    
    var body: some View {
        NavigationView {
            List(LMenuHistory, id: \.self) { item in
                NavigationLink(destination: MenuDetailView(menuDetail: item)){
                    HStack {
                        Text(item)
                        Spacer()
                        if item == selectedMenu {
                            Image(systemName: "checkmark")
                                .foregroundColor(.blue)
                        }
                    }
                    .contentShape(Rectangle())
                }
            }
            .navigationTitle("Lunch Menus")
            .toolbar {
                NavigationLink("Add New", destination: Item())
                Spacer()
                
            }
        }
    }
}
#Preview {
    LMenu()
}
