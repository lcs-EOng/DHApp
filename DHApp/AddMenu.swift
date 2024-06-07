//
//  AddMenu.swift
//  DHApp
//
//  Created by Ong Eason on 7/6/2024.
//

import SwiftUI

struct AddMenu: View {
    @State private var date = Date()
    var body: some View {
        VStack{
            DatePicker("Date", selection: $date, displayedComponents: .date)
                .frame(height: 50)
                .padding()
                .background(Rectangle()
                    .fill(Color.green)
                    .shadow(radius: 4)
                    .opacity(0.2))
                .font(.title)
            Text("Selected Items:")
                .font(.title)
                .bold()
        }
    }
}
#Preview {
    AddMenu()
}
