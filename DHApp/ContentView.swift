//
//  ContentView.swift
//  stopWatch
//
//  Created by Ong Eason on 3/11/2023.
//

import SwiftUI

struct TabView_TabItems: View {
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


        
struct TabOne: View{
        // MARK: Stored properties
        @State var base: Int = 1
        @State var base1: Int = 1
        
        
        // MARK: Computed properties
        var sum: Int{
            return base + base1
        }
        var body: some View {
            VStack {
                
                Spacer()
                
                HStack(alignment: .top) {
                    
                    Text("")
                    Spacer()
                    Text("\(base)")
                        .font(.system(size: 96))
                    
                }
                
                Stepper(value: $base, label:{
                    Text("Select first number")
                })
                
                HStack(alignment: .top) {
                    
                    Text("+")
                        .font(.system(size: 96))
                    Spacer()
                    Text("\(base1)")
                        .font(.system(size: 96))
                }
                
                Stepper(value: $base1, label:{
                    Text("Select second number")
                })
                
                Spacer()
                HStack{
                    Text("")
                    Spacer()
                    Text("\(sum)")
                        .font(.system(size: 96))
                }
            }
            .padding()
        }
}
struct TabTwo: View{
        // MARK: Stored properties
        @State var base: Int = 1
        @State var base1: Int = 1
        
        
        // MARK: Computed properties
        var sum: Int{
            return base - base1
        }
        var body: some View {
            VStack {
                
                Spacer()
                
                HStack(alignment: .top) {
                    
                    Text("")
                    Spacer()
                    Text("\(base)")
                        .font(.system(size: 96))
                    
                }
                
                Stepper(value: $base, label:{
                    Text("Select first number")
                })
                
                HStack(alignment: .top) {
                    
                    Text("-")
                        .font(.system(size: 96))
                    Spacer()
                    Text("\(base1)")
                        .font(.system(size: 96))
                }
                
                Stepper(value: $base1, label:{
                    Text("Select second number")
                })
                
                Spacer()
                HStack{
                    Text("")
                    Spacer()
                    Text("\(sum)")
                        .font(.system(size: 96))
                }
            }
            .padding()
        }
}
struct TabThree: View{
    // MARK: Stored properties
    @State var base: Int = 1
    @State var base1: Int = 1
    
    
    // MARK: Computed properties
    var sum: Int{
        return base * base1
    }
    var body: some View {
        VStack {
            
            Spacer()
            
            HStack(alignment: .top) {
                
                Text("")
                Spacer()
                Text("\(base)")
                    .font(.system(size: 96))
                
            }
            
            Stepper(value: $base, label:{
                Text("Select first number")
            })
            
            HStack(alignment: .top) {
                
                Text("x")
                    .font(.system(size: 96))
                Spacer()
                Text("\(base1)")
                    .font(.system(size: 96))
            }
            
            Stepper(value: $base1, label:{
                Text("Select second number")
            })
            
            Spacer()
            HStack{
                Text("")
                Spacer()
                Text("\(sum)")
                    .font(.system(size: 96))
            }
        }
        .padding()
    }
}
struct TabFour: View{
        // MARK: Stored properties
        @State var base: Int = 1
        @State var base1: Int = 1
        
        
        // MARK: Computed properties
        var sum: Int{
            return base / base1
        }
        var body: some View {
            VStack {
                
                Spacer()
                
                HStack(alignment: .top) {
                    
                    Text("")
                    Spacer()
                    Text("\(base)")
                        .font(.system(size: 96))
                    
                }
                
                Stepper(value: $base, label:{
                    Text("Select first number")
                })
                
                HStack(alignment: .top) {
                    
                    Image(systemName: "divide")
                        .font(.system(size: 96))
                    Spacer()
                    Text("\(base1)")
                        .font(.system(size: 96))
                }
                
                Stepper(value: $base1, label:{
                    Text("Select second number")
                })
                
                Spacer()
                HStack{
                    Text("")
                    Spacer()
                    Text("\(sum)")
                        .font(.system(size: 96))
                }
            }
            .padding()
        }
}
    
    
#Preview {
    TabView(){
        TabView_TabItems()
    }
}

