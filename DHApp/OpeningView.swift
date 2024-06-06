//
//  OpeningView.swift
//  DHApp
//
//  Created by Ong Eason on 6/6/2024.
//

import SwiftUI

struct OpeningView: View {
    @State private var userName = ""
    @State private var password = ""
    var body: some View {
        ZStack{RoundedRectangle(cornerRadius: 8)
                .foregroundStyle(Color.LCSG)
                .ignoresSafeArea()
            VStack{
                Text("Dining Hall Menu")
                    .bold()
                    .font(.title)
                Spacer()
                    .frame(height: 10)
                Text("Admin User Login")
                    .bold()
                    .font(.title)
                Spacer()
                    .frame(height: 10)
                Image("LCS")
                    .resizable()
                    .scaledToFit()
                    .opacity(2)
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .foregroundStyle(.white)
                    TextField("user name", text: $userName)
                        .foregroundStyle(Color.black)
                        .padding(.horizontal)
                }
                .frame(height: 40)
                .padding(.horizontal)
                
                RoundedRectangle(cornerRadius: 8)
                    .foregroundStyle(.white)
                    .ignoresSafeArea()
                    .overlay(
                        SecureField("password", text: $password)
                            .foregroundStyle(Color.black)
                            .padding(.horizontal)
                    )
                    .frame(height: 40)
                    .padding(.horizontal)
                Spacer()
                    .frame(height: 50)
                Button(action: {}) {
                    Text("Log In")
                        .padding(12)
                        .foregroundStyle(.white)
                        .background(Color.black)
                        .shadow(color: Color.black, radius: 10, y: 5)
                }
                Spacer()
                    .frame(height: 50)
                Button {} label: {
                    Text("Forgot Password?")
                    Text("Tap to Recover")
                        .foregroundStyle(.blue)
                }
                .font(.title2)
                Spacer()
                    .frame(height: 50)
                Button {} label: {
                    VStack {
                        Text("New User")
                        Text("(Register Here)").font(.body)
                    }
                }
                .font(.title2)

            }
        }
    }
}
#Preview {
    OpeningView()
}
