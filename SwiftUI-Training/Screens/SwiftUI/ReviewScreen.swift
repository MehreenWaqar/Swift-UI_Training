//
//  ReviewScreen.swift
//  SwiftUI-Training
//
//  Created by Mehreen Waqar on 26/12/2023.
//

import SwiftUI

struct ReviewScreen: View {
    var body: some View {
            VStack(spacing: 18) {
                Image("ReviewStars")
                    .frame(width: 192, height: 32)
                // UI - 30 Semi
                Text("Rate our app")
                    .font(
                        Font.custom("Inter", size: 30)
                            .weight(.semibold)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                // UI - 16 Medium
                Text("Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation. Ullamco tempor adipisicing et voluptate duis sit esse aliqua esse ex dolore esse. Consequat velit qui adipisicing sunt.")
                    .font(
                        Font.custom("Inter", size: 16)
                            .weight(.medium)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                    .frame(width: 311, alignment: .top)
                VStack(alignment: .center, spacing: 12) {
                    // UI - 16 Semi
                    Text("I love it!")
                        .font(
                            Font.custom("Inter", size: 16)
                                .weight(.semibold)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                }
                .padding(.horizontal, 32)
                .padding(.vertical, 16)
                .frame(width: 311, alignment: .top)
                .background(Color(red: 0.37, green: 0.69, blue: 0.46))
                .cornerRadius(100)
                // UI - 16 Semi
                Text("Don’t like the app? Let us know.")
                    .font(
                        Font.custom("Inter", size: 16)
                            .weight(.semibold)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.37, green: 0.69, blue: 0.46))
                    .frame(width: 311, alignment: .top)
            }

    }
}

#Preview {
    ReviewScreen()
}
