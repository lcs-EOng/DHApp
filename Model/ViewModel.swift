//
//  ViewModel.swift
//  DHApp
//
//  Created by Ong Eason on 9/6/2024.
//

import Foundation
import SwiftUI



@Observable
class MenuViewModel: ObservableObject {
    var foods: [MenuItem]
    
    init(foods:[MenuItem] = []){
        self.foods = foods
    }
    
    
}



