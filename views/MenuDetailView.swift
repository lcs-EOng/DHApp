//
//  MenuDetailView.swift
//  DHApp
//
//  Created by Ong Eason on 7/6/2024.
//

import SwiftUI

struct MenuDetailView: View {
    @Environment(MenuViewModel.self) var viewModel

    let menuDetail: String

    var body: some View {
        VStack{
            
            Text(menuDetail)
                .navigationTitle("Menu Detail")
                .navigationBarTitleDisplayMode(.inline)
            HStack{
                Text("Calories:")
                Text(bFast.calories)
            }
        }
    }
}

