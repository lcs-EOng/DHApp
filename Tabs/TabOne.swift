//
//  TabOne.swift
//  DHApp
//
//  Created by Ong Eason on 31/5/2024.
//

import SwiftUI

struct TabOnes: View {
    @State private var date = Date()
    var body: some View {
        VStack{
            Text("Breakfast")
                .font(.title)
            DatePicker("Date", selection: $date, displayedComponents: .date)
                .frame(height: 50)
                .padding()
                .background(Rectangle()
                    .fill(Color.green)
                    .shadow(radius: 4)
                    .opacity(0.2))
                .font(.title)
            
        }
    }
}


#Preview {
    TabOnes()
}
