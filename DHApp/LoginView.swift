//
//  LoginView.swift
//  DHApp
//
//  Created by Ong Eason on 6/6/2024.
//

import SwiftUI

struct LoginView: View {
    @State private var hasLoggedIn = true
    var body: some View {
        if hasLoggedIn == false {
            OpeningView()
        }else {
            TabView_TabItems()
        }
    }
    
}

#Preview {
    LoginView()
}
