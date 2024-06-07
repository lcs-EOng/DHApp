import SwiftUI

struct MenuHistoryView: View {
    // Example data for the menu history
    let menuHistory = [
        "2024-06-01: Spaghetti, Salad, Breadsticks",
        "2024-06-02: Chicken Alfredo, Caesar Salad",
        "2024-06-03: Tacos, Rice, Beans",
        // Add more entries here
    ]
    
    @State private var selectedMenu: String? = nil
    @State private var showingDetail = false
    
    var body: some View {
        NavigationView {
            List(menuHistory, id: \.self) { item in
                HStack {
                    Text(item)
                    Spacer()
                    if item == selectedMenu {
                        Image(systemName: "checkmark")
                            .foregroundColor(.blue)
                    }
                }
                .contentShape(Rectangle()) // Ensures the entire row is tappable
                .onTapGesture {
                    selectedMenu = item
                }
            }
            .navigationTitle("Menu History")
            .toolbar {
                if let selectedMenu = selectedMenu {
                    NavigationLink(destination: DetailedView(menuItem: selectedMenu)) {
                        Text("Details")
                    }
                }
            }
        }
    }
}

struct DetailedView: View {
    let menuItem: String
    
    var body: some View {
        VStack {
            Text("Detailed View")
                .font(.largeTitle)
                .padding()
            
            Text(menuItem)
                .font(.title)
                .padding()
        }
        .navigationBarTitle("Details", displayMode: .inline)
    }
}

struct TabViewTabItems: View {
    var body: some View {
        TabView {
            Text("Home")
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            Text("Settings")
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
            
            MenuHistoryView()
                .tabItem {
                    Label("History", systemImage: "clock")
                }
        }
    }
}

#Preview {
    TabViewTabItems()
}
