//
//  StaffListsView.swift
//  DHApp
//
//  Created by Ong Eason on 12/6/2024.
//

import SwiftUI

struct StaffListsView: View {
    //MARK: Stored properties
    @State private var viewModel = MenuItemListViewModel()

    //MARK: Computed properties
    var body: some View{
        NavigationStack{
            List(viewModel.staffs){ staff in
                VStack{
                    HStack{
                        Text(staff.first_name)
                        Text(staff.last_name)
                    }
                    Text(staff.email)
                }
                
            }
            .navigationTitle("Staffs")

        }
    }
    }


#Preview {
    StaffListsView()
}
