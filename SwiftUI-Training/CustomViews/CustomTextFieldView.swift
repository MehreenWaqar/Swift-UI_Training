//
//  CustomTextField.swift
//  SwiftUI-Training
//
//  Created by Mehreen Waqar on 01/01/2024.
//

import SwiftUI
import Combine

//MARK: - CustomTextFieldView
struct CustomTextFieldView: View {
    var placeHolder: String = ""
    @Binding var txt: String
    @State var isEmailField = false
    @State var isEmailValid: Bool?
    @State var isEnabled: Bool = false
    @State var isEditChanged: () -> Void?

    var body: some View {
        if self.isEmailField {
            VStack(alignment: .leading, spacing: 4) {
                TextField(placeHolder, text: $txt, onEditingChanged: { (isChanged) in
                    print(txt)
                    if !isChanged {
                        if CommonMethods.textFieldValidatorEmail(txt) {
                            print("is Valid")
                            isEmailValid = true
                        } else {
                            isEmailValid = false
                        }
                    }
                })
                    .padding()
                    .disabled(isEnabled)
                    .frame(width: 343, height: 50)
                    .font(
                        .semiMedium
                    )
                    .background(Color(red: 0.96, green: 0.96, blue: 0.96).cornerRadius(10))
                    .foregroundColor(.segmentUnSelectedForeground)
                    .font(.headline)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(red: 0.91, green: 0.91, blue: 0.91), lineWidth: 1)
                    )
                    .keyboardType(.emailAddress)
                    .onReceive(Just(txt)) { newValue in
                        let validString = newValue.filter { "1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ._-+$!~&=#[]@".contains($0) }
                        if validString != newValue {
                            self.txt = validString
                        }
                    }
                if let isValid = isEmailValid, isValid == false{
                    Text("Invalid Email")
                        .font( Font.custom("Inter", size: 12)
                            .weight(.medium))
                        .foregroundColor(Color.red)
                }
            }
        } else {
            TextField(placeHolder, text: $txt,onEditingChanged: {
                (isChanged) in
                if !isChanged {
                    isEditChanged()
                }
            })
                .padding()
                .frame(width: 343, height: 50)
                .font(
                    .semiMedium
                )
                .disabled(isEnabled)
                .background(Color(red: 0.96, green: 0.96, blue: 0.96).cornerRadius(10))
                .foregroundColor(.segmentUnSelectedForeground)
                .font(.headline)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(red: 0.91, green: 0.91, blue: 0.91), lineWidth: 1)
                )
        }
    }
}
struct CustomTextFieldView_Previews: PreviewProvider {
    struct CustomTextFieldViewHolder: View {
        @State var txt: String = "Name"
        var body: some View {
            CustomTextFieldView(txt: $txt, isEditChanged: {})
        }
    }

    static var previews: some View {
        CustomTextFieldViewHolder()
    }
}
