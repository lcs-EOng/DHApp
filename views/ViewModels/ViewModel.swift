//
//  ViewModel.swift
//  DHApp
//
//  Created by Ong Eason on 9/6/2024.
//


import Foundation

@Observable
class MenuViewModel: ObservableObject {
    @Published var menus: [MenuItem] = []
    
    init() {
        Task {
            await fetchMenus()
        }
    }
    
    func fetchMenus() async {
        do {
            let results: [MenuItem] = try await supabase
                .from("Food_Item")
                .select()
                .execute()
                .value
            
        
                self.menus = results
        } catch {
            debugPrint(error)
        }
    }
}




