//
//  PasswordTextFieldView.swift
//  SwiftUI-Training
//
//  Created by Mehreen Waqar on 01/01/2024.
//

import SwiftUI


//MARK: - PasswordTextFieldView
struct PasswordTextFieldView: View {
    var placeHolder: String = ""
    @Binding var password: String
    @State var isPwdHidden = false
    @State var isPwdValid: Bool?

    var body: some View {
        VStack(spacing: 8) {
            ZStack {
                HStack {
                    if self.isPwdHidden {
                        TextField("Password", text: $password, onEditingChanged: { (isChanged) in
                            print(password)
                            if !isChanged {
                                if CommonMethods.validatePassword(password).0 {
                                    print("is Valid")
                                    isPwdValid = true
                                } else {
                                    isPwdValid = false
                                }
                            }
                        })
                        .padding()
                        .font(
                            Font.custom("Inter", size: 16)
                                .weight(.medium)
                        )
                        .foregroundColor(Color(red: 0.74, green: 0.74, blue: 0.74))
                        .font(.headline)
                        
                    } else {
                        SecureField("Password", text: $password)
                            .padding()
                            .font(
                                Font.custom("Inter", size: 16)
                                    .weight(.medium)
                            )
                            .foregroundColor(Color(red: 0.74, green: 0.74, blue: 0.74))
                            .font(.headline)
                    }
                    Button(action: { self.isPwdHidden.toggle() }, label: {
                        Text(self.isPwdHidden ? "Hide" : "Show")
                            .font(
                                Font.custom("Inter", size: 16)
                                    .weight(.medium)
                            )
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(red: 0.37, green: 0.69, blue: 0.46))
                    }).padding()
                }
            }
            .frame(width: 343, height: 50)
            .background(Color(red: 0.96, green: 0.96, blue: 0.96).cornerRadius(10))
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(red: 0.91, green: 0.91, blue: 0.91), lineWidth: 1)
            )
            if let isValid = isPwdValid, isValid == false{
                Text(CommonMethods.validatePassword(password).1)
                    .padding(.leading)
                    .font( Font.custom("Inter", size: 12)
                        .weight(.medium))
                    .foregroundColor(Color.red)
            }
        }
    }
}
struct PasswordTextFieldView_Previews: PreviewProvider {
    struct PasswordTextFieldViewHolder: View {
        @State var password: String = "Password"
        var body: some View {
            PasswordTextFieldView(password: $password)
        }
    }

    static var previews: some View {
        PasswordTextFieldViewHolder()
    }
}

