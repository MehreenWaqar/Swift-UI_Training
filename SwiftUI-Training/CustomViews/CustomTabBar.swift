////
////  CustomTabBar.swift
////  SwiftUI-Training
////
////  Created by Mehreen Waqar on 08/01/2024.
////
//
//import SwiftUI
//
//struct Tab: Identifiable {
//    var id: Int
//    var title: String
//    var img: TabImg
//}
//enum TabImg: String, CaseIterable {
//    case house
//    case gearshape
//}
//struct CustomTabBar: View {
//    
//    @Binding var selectedTab: Tab
//    private var fillImage: String {
//        selectedTab.img.rawValue + ".fill"
//    }
//    var allTabs: [Tab] = [Tab(id: 1, title: "Home", img: .house),
//                          Tab(id: 2, title: "Settings", img: .gearshape)]
//    
//    var body: some View {
//        VStack {
//            HStack {
//                //                ForEach(allTabs) { tabItem in
//                //                    let tabItem: Tab = tabItem as Tab
//                //                    Spacer()
//                //                    VStack {
//                //                        Image(systemName: selectedTab.id == tabItem.id ? fillImage : tabItem.img.rawValue)
//                //                            .scaleEffect(tabItem.id == selectedTab.id ? 1.25 : 1.0)
//                //                            .foregroundColor(tabItem.id == selectedTab.id ? .red : .gray)
//                //                            .onTapGesture {
//                //                                selectedTab = tabItem
//                //                            }
//                //                        Text(tabItem.title)
//                //                    }
//                //                    .onTapGesture {
//                //                        selectedTab = tabItem
//                //                    }
//                //                    Spacer()
//                //                }
//                
//                TabView(selection: .constant(1),
//                        content:  {
//                    Text("Tab Content 1").tabItem { Text("Tab Label 1") }.tag(1)
//                    Text("Tab Content 2").tabItem { Text("Tab Label 2") }.tag(2)
//                })
//            }
//            .frame(width: nil, height: 60)
//            .background(.thinMaterial)
//            .cornerRadius(10)
//            .padding(.leading, 16)
//            .padding(.trailing, 16)
//        }
//    }
//}
//
//#Preview {
//    CustomTabBar(selectedTab: .constant(Tab(id: 1, title: "Home", img: .house)))
//}
