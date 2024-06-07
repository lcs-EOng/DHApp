//
//  TabOne.swift
//  DHApp
//
//  Created by Ong Eason on 31/5/2024.
//
import PhotosUI
import SwiftUI


struct Item: View {
    // The selection made in the PhotosPicker
    @State var selectionResult: PhotosPickerItem?
    
    // The actual image loaded from the selection that was made
    @State var newItemImage: FoodItemImage?
    @State private var textFieldData0 = ""
    @State private var textFieldData1 = ""
    @State private var textFieldData2 = ""
    @State private var isToggleOn = false
    @State private var meal = 0
    
    var body: some View {
        VStack{
            Picker("Meals", selection: $meal) {
                Text("Breakfast").tag(0)
                    .font(.title)
                
                Text("Lunch").tag(1)
                    .font(.title)
                
                Text("Dinner").tag(2)
                    .font(.title)
                
            }
            .font(.title)
            Spacer()
                .frame(height: 10 )
                HStack {
                
                PhotosPicker(selection: $selectionResult, matching: .images) {
                    
                    // Has an image been loaded?
                    if let newItemImage = newItemImage {
                        
                        // Yes, show it
                        newItemImage.image
                            .resizable()
                            .scaledToFit()
                        
                    } else {
                        
                        // No, show an icon instead
                        Image(systemName: "photo.badge.plus")
                            .symbolRenderingMode(.multicolor)
                            .font(.system(size: 100))
                            .foregroundStyle(.tint)
                        
                    }
                    
                }
                
            }
            Spacer()
                .frame(height: 50)
            TextField("Name of Food", text: $textFieldData0)
                .font(.title)
                .bold()
                .padding(.horizontal)
                .padding()
            TextField("What are the ingridients?", text: $textFieldData1)
                .padding(.horizontal)
                .padding()
            TextField("What is the amount of calories?", text: $textFieldData2)
                .padding(.horizontal)
                .padding()
            HStack{
                Toggle("Any Allergens?", isOn: $isToggleOn)
                    .padding()
                    .accentColor(Color.green)
            }
            
            
            Spacer()
                .frame(height: 20)
            Button(action: {}) {
                Text("Save Menu")
                    .padding()
                    .foregroundStyle(.white)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
            }
            
        }
    }
}
    


#Preview {
    Item()
}
