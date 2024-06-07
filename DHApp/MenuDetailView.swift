//
//  MenuDetailView.swift
//  DHApp
//
//  Created by Ong Eason on 7/6/2024.
//

import SwiftUI

struct MenuDetailView: View {
    let menuDetail: String

    var body: some View {
        Text(menuDetail)
            .navigationTitle("Menu Detail")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    MenuDetailView(menuDetail: "lol")
}
