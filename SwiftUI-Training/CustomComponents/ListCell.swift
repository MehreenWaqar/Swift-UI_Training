//
//  ListCell.swift
//  SwiftUI-Training
//
//  Created by Mehreen Waqar on 26/12/2023.
//

import SwiftUI

struct ListCell: View {
    
    var title: String = "hi"
    var subTitle: String = "ABC"
    var desc: String = "a"
    var body: some View {
        GeometryReader(content: { geometry in
            ZStack {
                HStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 50, height: 50)
                        .background(Color(red: 0.96, green: 0.96, blue: 0.96))
                    
                        .cornerRadius(8)
                    VStack(alignment: .leading, spacing: 8) {
                        HStack {
                            // UI - 16 Semi
                            Text(title)
                                .multilineTextAlignment(.leading)
                                .font(
                                    .semiBoldMedium
                                )
                                .foregroundColor(.black)
                            Spacer()
                            // UI - 14 Regular
                            Text(desc)
                                .font(Font.custom("Inter", size: 14))
                                .multilineTextAlignment(.trailing)
                                .foregroundColor(Color(red: 0.74, green: 0.74, blue: 0.74))
                        }
                        // UI - 14 Regular
                        Text(subTitle)
                            .font(Font.custom("Inter", size: 14))
                            .foregroundColor(.black)
                            .frame(width: 269, alignment: .topLeading)
                    }
                }
            }
//            .padding()
//            .frame(width: geometry.size.width, height: 100)
        })
    }
}

#Preview {
    ListCell()
}
