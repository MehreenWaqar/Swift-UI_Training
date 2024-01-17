//
//  TabViewScreen.swift
//  SwiftUI-Training
//
//  Created by Mehreen Waqar on 08/01/2024.
//

import SwiftUI

enum Tab: String, Hashable, CaseIterable {
    case house
    case gearshape
}

struct TabViewScreen: View {
    @State var studentData = [
        CustomListData(name: "Ahmed", grade: "B",programme: "BSCS"),
        CustomListData(name: "Mehreen", grade: "A",programme: "BSIT"),
        CustomListData(name: "Ali", grade: "B",programme: "BSCS"),
        CustomListData(name: "Waqar", grade: "C",programme: "BSSE"),
        CustomListData(name: "Faraz", grade: "A",programme: "MSIT"),
        CustomListData(name: "Faizan", grade: "A",programme: "MSCS"),
        CustomListData(name: "Alyaan", grade: "C",programme: "MSIS")
    ]
    @State var currentTab: Tab = .house
    @State var path = NavigationPath()
    @State var navPath: [RoutePath] = []
    var body: some View {
        NavigationStack {
            TabView(selection: $currentTab,
                    content:  {
                StudentListing(dataList: $studentData, navPath: $navPath)
                
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                    .tag(Tab.house)
                SettingsView(navigationPath: $navPath, currentTab: $currentTab)
                
                    .tabItem {
                        Image(systemName: "gearshape.fill")
                        Text("Settings")
                    }
                    .tag(Tab.gearshape)
            })
            .accentColor(.red)
            .onAppear() {
                UITabBar.appearance().barTintColor = .white
            }
        }
    }
}

#Preview {
    TabViewScreen()
}

protocol PassingData {
   func navigateToRoot()
}

struct SettingsView: UIViewControllerRepresentable {
    @Binding var navigationPath: [RoutePath]
    @Binding var currentTab: Tab


    func makeUIViewController(context: Context) -> SettingsViewController {
        let vc = SettingsViewController(nibName: "SettingsViewController", bundle: nil)
        vc.delegate = context.coordinator
        return vc
    }
    
    func updateUIViewController(_ uiViewController: SettingsViewController, context: Context) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(navigationPath: $navigationPath, currentTab: $currentTab)
       }
}
class Coordinator {
       @Binding var navigationPath: [RoutePath]
       @Binding var currentTab: Tab

    init(navigationPath: Binding<[RoutePath]>, currentTab: Binding<Tab>) {
        _navigationPath = navigationPath
        _currentTab = currentTab
       }
   }
extension Coordinator: PassingData {
    func navigateToRoot() {
        print("root")
        currentTab = .house
        navigationPath.removeAll()
    }
}

enum RoutePath {
    case studentDetail
}
