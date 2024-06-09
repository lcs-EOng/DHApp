import SwiftUI
import PhotosUI

struct TabView_TabItems: View {
    @State var selectionResult: PhotosPickerItem?
    @State var newItemImage: FoodItemImage?

    private func loadTransferable(from imageSelection: PhotosPickerItem) {
        Task {
            do {
                newItemImage = try await imageSelection.loadTransferable(type: FoodItemImage.self)
            } catch {
                debugPrint(error)
            }
        }
    }

    var body: some View {
        TabView {
            BMenuHistoryView()
                .tabItem {
                    Image(systemName: "cup.and.saucer.fill")
                    Text("Breakfast")
                }

            LMenu()
                .tabItem {
                    Image(systemName: "takeoutbag.and.cup.and.straw.fill")
                    Text("Lunch")
                }
                .environment(MenuViewModel())

            DMenu()
                .tabItem {
                    Image(systemName: "fork.knife")
                    Text("Dinner")
                }
               

            TabFour()
                .tabItem {
                    Image(systemName: "gearshape.fill")
                    Text("Settings")
                }
                
        }
        .onAppear {
            let appearance = UITabBarAppearance()
            appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
            appearance.backgroundColor = UIColor(Color.green.opacity(0.2))
            UITabBar.appearance().standardAppearance = appearance
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
    }
}

#Preview {
    TabView_TabItems()
}
