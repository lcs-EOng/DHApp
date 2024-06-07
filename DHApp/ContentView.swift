//
//  ContentView.swift
//  stopWatch
//
//  Created by Ong Eason on 3/11/2023.
//
import PhotosUI
import SwiftUI

struct TabView_TabItems: View {
    // The selection made in the PhotosPicker
    @State var selectionResult: PhotosPickerItem?

    // The actual image loaded from the selection that was made
    @State var newItemImage: FoodItemImage?
    // MARK: Functions

    // Transfer the data from the PhotosPicker selection result into the stored property that
    // will hold the actual image for the new to-do item
    private func loadTransferable(from imageSelection: PhotosPickerItem) {
        Task {
            do {
                // Attempt to set the stored property that holds the image data
                newItemImage = try await imageSelection.loadTransferable(type: FoodItemImage.self)
            } catch {
                debugPrint(error)
            }
        }
    }

    var body: some View{
        TabView{
            BMenuHistoryView()
                .tabItem {
                    Image(systemName: "cup.and.saucer.fill")
                    Text("Breakfast")
                }
            
            LMenu()
                .tabItem {
                    Image(systemName: "takeoutbag.and.cup.and.straw.fill")
                    Text("Lunch")
                }
            BMenuHistoryView()
                .tabItem{
                    Image(systemName: "fork.knife")
                    Text("Dinner")
                }
           TabFour()
                .tabItem{
                    Image(systemName: "gearshape.fill")
                    Text("Settings")
                }
           
                    
                }
        .onAppear {
        let appearance = UITabBarAppearance()
        appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
        appearance.backgroundColor = UIColor(Color.green.opacity(0.2))
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
        }        }
    }


        

    
    
#Preview {
    TabView_TabItems()
}

