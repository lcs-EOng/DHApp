
//
//  TabOne.swift
//  DHApp
//
//  Created by Ong Eason on 31/5/2024.
//
import PhotosUI
import SwiftUI


struct Menus: View {
    // The selection made in the PhotosPicker
    @State var selectionResult: PhotosPickerItem?
    
    // The actual image loaded from the selection that was made
    @State var newItemImage: FoodItemImage?
    @State private var textFieldData1 = ""
    @State private var textFieldData2 = ""
    @State private var date = Date()
    @State private var isToggleOn = false
    @State private var meal = 0
    
    var body: some View {
        VStack{
            Spacer()
                .frame(height: 20)
            
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
            DatePicker("Date", selection: $date, displayedComponents: .date)
                .frame(height: 50)
                .padding()
                .background(Rectangle()
                    .fill(Color.green)
                    .shadow(radius: 4)
                    .opacity(0.2))
                .font(.title)
            Spacer()
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
            .frame(height: 100)
            TextField("What is the food for breakfast?", text: $textFieldData1)
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
    Menus()
}
