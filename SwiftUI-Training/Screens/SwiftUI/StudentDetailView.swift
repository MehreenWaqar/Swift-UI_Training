//
//  StudentDetailView.swift
//  SwiftUI-Training
//
//  Created by Mehreen Waqar on 02/01/2024.
//

import SwiftUI
import Combine

struct StudentDetailView: View {
    @Environment(\.presentationMode) var presentation

    @State var isEdited: Bool = false
    @State var isShowAlert: Bool = false
    @State var studentModel: CustomListData
    @Binding var customListData: CustomListData
    @Binding var navPath: [RoutePath]

    var body: some View {
        Spacer(minLength: 50)
        GeometryReader(content: { geometry in
            VStack(spacing: 32) {
                VStack(spacing: 16) {
                    LabelView(text: "Name",mainWidth: geometry.size.width, alignment: .leading, leftPadding: 32)
                    if isEdited {
                        CustomTextFieldView(placeHolder: "Name", txt: $customListData.name, isEditChanged: {})
                    } else {
                        LabelView(text: customListData.name,textColor: .gray,mainWidth: geometry.size.width, alignment: .leading, leftPadding: 32)
                    }
                }
                
                VStack(spacing: 16) {
                    LabelView(text: "Grade",mainWidth: geometry.size.width, alignment: .leading, leftPadding: 32)
                    if isEdited {
                        CustomTextFieldView(placeHolder: "Grade", txt: $customListData.grade,isEditChanged: {})
                    } else {
                        LabelView(text: customListData.grade,textColor: .gray, mainWidth: geometry.size.width, alignment: .leading, leftPadding: 32)
                    }
                }
                
                VStack(spacing: 16) {
                    LabelView(text: "Programme",mainWidth: geometry.size.width, alignment: .leading, leftPadding: 32)
                    if isEdited {
                        CustomTextFieldView(placeHolder: "Programme", txt: $customListData.programme,isEditChanged: {})
                    } else {
                        LabelView(text: customListData.programme,textColor: .gray,mainWidth: geometry.size.width, alignment: .leading, leftPadding: 32)
                    }
                }
            }
            .frame(width: geometry.size.width,alignment: .center)
        })
        Button(action: {
            if isEdited {
                isShowAlert = true
            } else {
                self.isEdited = true
            }
        }, label: {
            Text("Edit")
                .padding(.horizontal, 32)
                .padding(.vertical, 16)
                .frame(width: 343, alignment: .top)
                .background(Color.customBtnBackground)
                .foregroundColor(.white)
                .cornerRadius(100)
        })
        .alert(isPresented: $isShowAlert){
            Alert(title: Text("Confirm Edit"), primaryButton: Alert.Button.default(Text("Done"), action: {
                print("yes clicked")
                self.presentation.wrappedValue.dismiss()
            }), secondaryButton: Alert.Button.cancel(Text("Discard"), action: {
                print("no clicked")
                customListData.name = studentModel.name
                customListData.grade = studentModel.grade
                customListData.programme = studentModel.programme

            })
            )
        }
    }
}
