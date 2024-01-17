//
//  HomeScreen.swift
//  SwiftUI-Training
//
//  Created by Mehreen Waqar on 18/12/2023.
//

import SwiftUI

struct CustomListData: Identifiable {
    var id = UUID()
    var name: String
    var grade: String
    var programme: String
    
}
enum Segment: String {
    case Posts
    case Photos
}

struct ProfileScreen: View {
    
    @State var postListData = [
        CustomListData(name: "Ahmed", grade: "B",programme: "BSCS"),
        CustomListData(name: "Mehreen", grade: "A",programme: "BSIT"),
        CustomListData(name: "Ali", grade: "B",programme: "BSCS"),
        CustomListData(name: "Waqar", grade: "C",programme: "BSSE"),
        CustomListData(name: "Faraz", grade: "A",programme: "MSIT"),
        CustomListData(name: "Faizan", grade: "A",programme: "MSCS"),
        CustomListData(name: "Alyaan", grade: "C",programme: "MSIS")
    ]
    @State var photosListData = [
        CustomListData(name: "Ahmed", grade: "A",programme: "BSCS"),
        CustomListData(name: "Ali", grade: "B",programme: "BSIT")
    ]
    @State var item: CustomListData = CustomListData(name: "", grade: "", programme: "")
    @State var selectedSegment: Segment = .Posts
    
    
    var body: some View {
        NavigationStack {
            VStack {
                GeometryReader(content: { geometry in
                    VStack(spacing: 95) {
                        ProfileTopView()
                            .frame(width: geometry.size.width, height: geometry.size.height/4 - 30, alignment: .top)
                            .foregroundColor(.primaryColor)
                            .background(Color.primaryColor)
                        VStack(spacing: 0) {
                            VStack(spacing: 16) {
                                VStack(spacing: 8) {
                                    LabelView(text: "Victoria Robertson", fontStyle: .semiBoldLarge, textColor: .black,mainWidth: geometry.size.width)
                                    LabelView(text: "A mantra goes here", fontStyle: .semiBoldMedium, textColor: .black,mainWidth: geometry.size.width)
                                }
                                SegmentControl(segments: ["Posts","Photos"], selectedSegment: selectedSegment.rawValue)
                                    .padding()
                                    .frame(width: geometry.size.width, height: 68)
                            }
                            if selectedSegment == .Posts {
//                                ProfileBottomView(selectedSegment: selectedSegment, dataList: $postListData, studentItem: item)
                            }
                            
                        }
                    }
                })
            }
        }
    }
}

struct ProfileTopView: View {
    @State private var showingDrawer = false

    var body: some View {
        GeometryReader(content: { geometry in
            VStack(spacing: geometry.size.height/4) {
                NavigationTopView(leftButtonTitle: "Settings",leftButtonTextColor: .white, rightButtonTitle: "Logout", rightButtonTextColor:.white, mainTitleColor: .white, mainTitle: "Profile")
                Button {
                    showingDrawer.toggle()
                } label: {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 158, height: 158)
                        .background(
                            Image("Profile")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 198, height: 208)
                                .clipped()
                        )
                }
                .sheet(isPresented: $showingDrawer) {
                    DrawerHeader()
                        .presentationDetents([.fraction(0.4), .height(400), .medium, .large])
                }
               
            }
            .padding(.horizontal)
        })
    }
}

struct ProfileBottomView: View {
    
    var selectedSegment: Segment = .Posts
    @Binding var dataList: [CustomListData]
    var studentItem: CustomListData

    var body: some View {
            GeometryReader(content: { geometry in
                VStack() {
//                    List {
//                        ForEach($dataList) { $item in
//                            NavigationLink(destination: StudentDetailView(studentModel: item, customListData: $item, navPath: <#Binding<[RoutePath]>#>)
//                                .navigationTitle("Student Detail")) {
//                                    ListCell(title: item.name, subTitle: item.programme, desc: item.grade)
//                            }
//                        }
//                    }
//                    .environment(\.defaultMinListRowHeight, 80)
//                    .scrollContentBackground(.hidden)
                }
            })
    }
}

struct ProfileTopView_Previews: PreviewProvider {
    struct ProfileTopViewHolder: View {
        var body: some View {
            ProfileTopView()
        }
    }
    
    static var previews: some View {
        ProfileTopViewHolder()
    }
}

#Preview {
    ProfileScreen()
}
