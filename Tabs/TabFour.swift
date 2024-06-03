//
//  TabFour.swift
//  DHApp
//
//  Created by Ong Eason on 3/6/2024.
//

import SwiftUI

struct TabFour: View {
    @State private var isOn = false
    var body: some View {
        
        ZStack{
            Rectangle()
                .frame(height: 1000)
                .foregroundColor(.white)
            VStack{
                Image("LCS")
                    .resizable()
                    .scaledToFit()
                VStack{
                    Text("Options")
                        .font(.title)
                    
                        .bold()
                    Toggle(isOn: $isOn) {
                        Text("Dark Mode")
                            .font(.title)
                    }
                    Spacer()
                        .frame(height: 50)
                    Button(action: {}) {
                        Text("Log Out?")
                            .padding(12)
                            .foregroundStyle(.white)
                            .background(Color.black)
                            .shadow(color: Color.black, radius: 10, y: 5)
                    }
                }
                .padding()
                .frame(height: 500)
                .background(RoundedRectangle(cornerRadius:20)
                    .fill(Color.red))
            }
            
        }
    }
}


#Preview {
    TabFour()
}
