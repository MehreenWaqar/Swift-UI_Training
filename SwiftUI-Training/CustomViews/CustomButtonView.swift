//
//  CustomButton.swift
//  SwiftUI-Training
//
//  Created by Mehreen Waqar on 01/01/2024.
//

import SwiftUI

//MARK: - CustomButton
struct CustomButton: View {
    var buttonText: String = "Login"
    var buttonTextColor: Color = .white
    var buttonBackgroundColor: Color = .customBtnBackground
    var body: some View {
        VStack(alignment: .center, spacing: 12) {
            Text(buttonText)
                .font(
                    .semiBoldMedium
                )
                .multilineTextAlignment(.center)
                .foregroundColor(buttonTextColor)
        }
        .padding(.horizontal, 32)
        .padding(.vertical, 16)
        .frame(width: 343, alignment: .top)
        .background(buttonBackgroundColor)
        .cornerRadius(100)
    }
    
}

#Preview {
    CustomButton(buttonText: "Signup", buttonTextColor: .white, buttonBackgroundColor: .customBtnBackground)
}

// MARK: - SimpleButton
struct SimpleButton: View {
    var buttonText: String = "Login"
    var buttonTextColor: Color = .simpleButtonTextColor
    
    var body: some View {
            Text(buttonText)
                .font(
                    .semiBoldMedium
                )
                .foregroundColor(buttonTextColor)
    }
}

struct SimpleButton_Previews: PreviewProvider {
    struct SimpleButtonHolder: View {
        var body: some View {
            SimpleButton(buttonText: "Forgot your password?", buttonTextColor: .simpleButtonTextColor)
        }
    }

    static var previews: some View {
        SimpleButtonHolder()
    }
}


// MARK: - ImageButton
struct ImageButton: View {
    var imgName: String = "X"
    var body: some View {
        Button(action: {}, label: {
            Image(imgName)
                .frame(width: 16, height: 16)
                .rotationEffect(Angle(degrees: 90))
        })
    }
}

struct ImageButton_Previews: PreviewProvider {
    struct ImageButtonHolder: View {
        var body: some View {
            ImageButton(imgName: "X")
        }
    }

    static var previews: some View {
        ImageButtonHolder()
    }
}

