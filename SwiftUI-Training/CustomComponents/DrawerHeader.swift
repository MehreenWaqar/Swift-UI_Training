//
//  DrawerHeader.swift
//  SwiftUI-Training
//
//  Created by Mehreen Waqar on 26/12/2023.
//

import SwiftUI

struct DrawerHeader: View {
    @Environment(\.isPresented) var present

    var body: some View {
        GeometryReader(content: { geometry in
            NavigationView {
                VStack(spacing: 18) {
                    //                Image("DrawerTop")
                    //                    .frame(width: 32, height: 4)
                    //                // UI - 30 Medium
                    Spacer(minLength: 12)
                    Text("Drawer Header")
                        .font(
                            Font.custom("Inter", size: 24)
                                .weight(.medium)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                    // UI - 16 Medium
                    Text("Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation.")
                        .font(
                            Font.custom("Inter", size: 16)
                                .weight(.medium)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                        .frame(width: 311, alignment: .top)
                    VStack(alignment: .center, spacing: 12) {
                       
                        NavigationLink {
                            CongratulationScreen()
                        } label: {
                            Text("Click Me")
                                .font(
                                    Font.custom("Inter", size: 16)
                                        .weight(.semibold)
                                )
                                .multilineTextAlignment(.center)
                                .foregroundColor(.white)
                        }
                    }
                    .padding(.horizontal, 32)
                    .padding(.vertical, 16)
                    .frame(width: 327, alignment: .top)
                    .background(Color(red: 0.37, green: 0.69, blue: 0.46))
                    .cornerRadius(100)
                    
                    Text("Secondary Action")
                        .font(
                            Font.custom("Inter", size: 16)
                                .weight(.semibold)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.37, green: 0.69, blue: 0.46))
                        .frame(width: 311, alignment: .top)
                    
                    Spacer(minLength: 100)
                }
                .padding(.top, 0)
                .frame(width: geometry.size.width, height: 400)
                .cornerRadius(24)
                
            }
            .navigationBarHidden(true)

            })
        
    }
}

#Preview {
    DrawerHeader()
}
