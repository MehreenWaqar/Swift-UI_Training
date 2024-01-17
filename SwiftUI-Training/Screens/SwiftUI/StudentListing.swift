//
//  StudentListing.swift
//  SwiftUI-Training
//
//  Created by Mehreen Waqar on 08/01/2024.
//

import SwiftUI


struct StudentListing: View {
    
    @Binding var dataList: [CustomListData]
    @Binding var navPath: [RoutePath]
    
    @State var isRowActive: Bool = false
    @State var student: CustomListData = CustomListData(name: "", grade: "", programme: "")
    
    var body: some View {
        NavigationStack {
            GeometryReader(content: { geometry in
                VStack(alignment: .center) {
                    List {
                        ForEach($dataList) { $item in
                            ListCell(title: item.name, subTitle: item.programme, desc: item.grade)
                                .frame(alignment: .center)
                                .listRowSeparator(.hidden)
                                .padding(.leading, 0)
                                .onTapGesture {
                                    navPath.append(.studentDetail)
                                    isRowActive.toggle()
                                    student = item
                                }
                        }
                    }
                    .frame(alignment: .center)
                    .environment(\.defaultMinListRowHeight, 80)
                    .scrollContentBackground(.hidden)
                    .navigationBarTitle(Text("Student List"))
                    .navigationDestination(isPresented: $isRowActive) {
                        StudentDetailView(studentModel: student, customListData: $student, navPath: $navPath)
                    }
                }
            })
        }
    }
}
#Preview {
    StudentListing(dataList: .constant([
        CustomListData(name: "Ahmed", grade: "B",programme: "BSCS"),
        CustomListData(name: "Mehreen", grade: "A",programme: "BSIT"),
        CustomListData(name: "Ali", grade: "B",programme: "BSCS"),
        CustomListData(name: "Waqar", grade: "C",programme: "BSSE"),
        CustomListData(name: "Faraz", grade: "A",programme: "MSIT"),
        CustomListData(name: "Faizan", grade: "A",programme: "MSCS"),
        CustomListData(name: "Alyaan", grade: "C",programme: "MSIS")
    ]),navPath: .constant([.studentDetail]))
}
