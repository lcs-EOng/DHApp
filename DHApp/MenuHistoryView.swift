//
//  MenuHistoryView.swift
//  DHApp
//
//  Created by Ong Eason on 6/6/2024.
//

import SwiftUI

struct MenuHistoryView: View {
    let menuHistory = [
            "2024-06-01: ",
            "2024-06-02: ",
            "2024-06-03: ",
        ]
    var body: some View {
        NavigationView {
            List(menuHistory, id: \.self) { item in
                Text(item)
            }
            .navigationTitle("Menu History")
        }
    }
}
#Preview {
    MenuHistoryView()
}
