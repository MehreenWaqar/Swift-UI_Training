//
//  LoginScreen.swift
//  SwiftUI-Training
//
//  Created by Mehreen Waqar on 18/12/2023.
//

import SwiftUI

struct LoginScreen: View {
    @State private var email: String = ""
    @State private var password: String = ""

    var body: some View {
        VStack {
            VStack(spacing: 32) {
                NavigationTopView(isShowLeftButton: false, isShowRightButton: false, mainTitle: "Log In")
                VStack(spacing: 16) {
                    CustomTextFieldView(placeHolder: "Email",txt: $email, isEmailField: true, isEditChanged: {})
                    PasswordTextFieldView(placeHolder: "Password", password: $password)
                }
            }.padding()
            CustomButton(buttonText: "Login")
            Spacer()
        }.padding()
    }
}

#Preview {
    LoginScreen()
}
