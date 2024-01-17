//
//  NavigationTopView.swift
//  SwiftUI-Training
//
//  Created by Mehreen Waqar on 01/01/2024.
//

import SwiftUI

//MARK: - NavigationTopView
struct NavigationTopView: View {
    var isShowLeftButton = true
    var isShowRightButton = true
    var leftButtonTitle = ""
    var leftButtonTextColor = Color(red: 0.37, green: 0.69, blue: 0.46)
    var rightButtonTitle = "Login"
    var rightButtonTextColor = Color(red: 0.37, green: 0.69, blue: 0.46)
    var mainTitleColor = Color(red: 0.37, green: 0.69, blue: 0.46)
    var mainTitle = "Sign Up"

    var body: some View {
        HStack(spacing: 90) {
            if isShowLeftButton {
                if leftButtonTitle == "" {
                    ImageButton(imgName: "X")
                } else {
                    Text(leftButtonTitle)
                        .font(
                            Font.custom("Inter", size: 16)
                                .weight(.medium)
                        )
                        .multilineTextAlignment(.trailing)
                        .foregroundColor(leftButtonTextColor)
                }
            }
            Text(mainTitle)
                .font(
                    Font.custom("Inter", size: 24)
                        .weight(.semibold)
                )
                .multilineTextAlignment(.center)
                .foregroundColor(mainTitleColor)
            if isShowRightButton {
                Text(rightButtonTitle)
                    .font(
                        Font.custom("Inter", size: 16)
                            .weight(.medium)
                    )
                    .multilineTextAlignment(.trailing)
                    .foregroundColor(rightButtonTextColor)
            }
        }

    }
}

#Preview {
    NavigationTopView()
}
