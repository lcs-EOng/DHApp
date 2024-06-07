//
//  MenuHistoryView.swift
//  DHApp
//
//  Created by Ong Eason on 6/6/2024.
//

import SwiftUI

struct DMenu: View {
    let DMenuHistory = [
            "2024-06-01: ",
            "2024-06-02: ",
            "2024-06-03: ",
        ]
    @State private var selectedMenu: String? = nil

    var body: some View {
        NavigationView {
                    List(DMenuHistory, id: \.self) { item in
                        HStack {
                            Text(item)
                            Spacer()
                            if item == selectedMenu {
                                Image(systemName: "checkmark")
                                    .foregroundColor(.blue)
                            }
                        }
                        .contentShape(Rectangle()) // Ensures the entire row is tappable
                        .onTapGesture {
                            selectedMenu = item
                        }
                    }
            .navigationTitle("Dinner Menus")
                        .toolbar {
                            NavigationLink("Add New", destination: Item())
                            Spacer()
                            Button {} label: {
                                Text("Next")
                            }
                        }
        }
    }
}
#Preview {
    DMenu()
}
