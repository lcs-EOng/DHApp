//
//  interactiveAppsApp.swift
//  interactiveApps
//
//  Created by Ong Eason on 15/1/2024.
//

import SwiftUI

@main
struct interactiveAppsApp: App {
    var body: some Scene {
        WindowGroup {
            TabView_TabItems()
            TabView {
                
                Text("Plus")
                    .tabItem {
                        Image(systemName: "plus")
                        Text("Plus")
                    }
                
                Text("Minus")
                    .tabItem {
                        Image(systemName: "minus")
                        Text("Minus")
                    }
                
                Text("Multiply")
                    .tabItem {
                        Image(systemName: "multiply")
                        Text("Multiply")
                    }
                Text("Divide")
                    .tabItem {
                        Image(systemName: "divide")
                        Text("Divide")
                    }
            }
        }
    }
}
