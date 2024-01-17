//
//  ContentView.swift
//  SwiftUI-Training
//
//  Created by Mehreen Waqar on 17/12/2023.
//

import Combine
import SwiftUI

class ViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var name = ""
}

struct SignupScreen: View {
    @StateObject var viewModel = ViewModel()

    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var checked = false

    var body: some View {
        NavigationStack {
            VStack {
                VStack(spacing: 32) {
                    NavigationTopView(isShowLeftButton: true, isShowRightButton: true, rightButtonTitle: "Login")
                    VStack(spacing: 16) {
                        CustomTextFieldView(placeHolder: "Name", txt: $viewModel.name,isEditChanged: {})
                        CustomTextFieldView(placeHolder: "Email", txt: $viewModel.email, isEmailField: true,isEditChanged: {})
                        PasswordTextFieldView(placeHolder: "Password", password: $viewModel.password, isPwdHidden: false)
                    }
                    CheckBoxView(checked: $checked)
                }
                VStack(spacing: 16) {
                    CustomButton(buttonText: "Signup")
                    SimpleButton(buttonText: "Forgot your password?",buttonTextColor: .simpleButtonTextColor)
                }
                Spacer()
            }
        }.padding()
    }
}

#Preview {
    SignupScreen()
}

