//
//  StaffList.swift
//  DHApp
//
//  Created by Ong Eason on 12/6/2024.
//




import SwiftUI


struct StaffListsView: View {
    // MARK: Stored properties
    @State private var viewModel = StaffListViewModel()

    // MARK: Computed properties
    var body: some View {
        NavigationStack {
            List(viewModel.staffsWithFoodItem) { staff in
               NavigationLink{
                   MenuListView(staff: staff)
               }label:{
                   Text("\(staff.first_name) \(staff.last_name)")
               }
                .padding(.vertical, 10)
            }
            .navigationTitle("Staffs")
        }
    }
   

}

#Preview {
    StaffListsView()
}
