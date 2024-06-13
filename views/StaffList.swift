//
//  StaffList.swift
//  DHApp
//
//  Created by Ong Eason on 13/6/2024.
//

import SwiftUI


struct StaffListView: View {
    //MARK: Stored properties
    @State private var viewModel = StaffListViewModel()

    //MARK: Computed properties
    var body: some View {
        NavigationStack{
            List(viewModel.staffs) { staff in
               HStack {
                   Text("\(staff.first_name) \(staff.last_name)")
                }
            }
            .navigationTitle("Staffs")
        }
    }
}

#Preview {
    StaffListView()
}
