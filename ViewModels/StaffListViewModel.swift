//
//  StaffListViewModel.swift
//  DHApp
//
//  Created by Ong Eason on 13/6/2024.
//

import Foundation

@Observable
class StaffListViewModel: Observable{
    //MARK: Stored properties
    var staffs: [Staff] = []
    //MARK: Initializers
    init(){
        Task{
            try await getStaffs()
        }
    }
    
    //MARK: Functions
    func getStaffs() async throws{
        do{
            let results: [Staff] = try await supabase
                .from("Staff")
                .select()
                .execute()
                .value
        }catch {
            debugPrint(error)
        }
    }
}
