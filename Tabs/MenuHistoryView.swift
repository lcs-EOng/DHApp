//
//  MenuHistoryView.swift
//  DHApp
//
//  Created by Ong Eason on 6/6/2024.
//

import SwiftUI

struct BMenuHistoryView: View {
    let bMenuHistory = [
        "2024-06-01: ",
        "2024-06-02: ",
        "2024-06-03: ",
    ]
    @State private var selectedMenu: String? = nil
    
    var body: some View {
        NavigationView {
            List(bMenuHistory, id: \.self) { item in
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
            .navigationTitle("Breakfast Menus")
            
                
            }
        }
    }
    

#Preview {
    BMenuHistoryView()
}
