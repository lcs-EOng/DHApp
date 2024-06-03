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
            TabOne()
                .tabItem {
                    Image(systemName: "cup.and.saucer.fill")
                    Text("Breakfast")
                }
            TabTwo()
                .tabItem {
                    Image(systemName: "takeoutbag.and.cup.and.straw.fill")
                    Text("Lunch")
                }
            TabThree()
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
        }
    }


        

    
    
#Preview {
    TabView_TabItems()
}

