//
//  LabelView.swift
//  SwiftUI-Training
//
//  Created by Mehreen Waqar on 01/01/2024.
//

import SwiftUI

struct LabelView: View {
    var text: String = "Hello, World!"
    var fontStyle: Font = .semiMedium
    var textColor: Color = .black
    var mainWidth: CGFloat = 400
    var alignment: Alignment = .center
    var leftPadding: CGFloat = 0.0
    var body: some View {
        Text(text)
            .padding(.leading, leftPadding)
            .frame(width: mainWidth,alignment: alignment)
            .font(fontStyle)
            .foregroundColor(textColor)
    }
    
}

#Preview {
    LabelView()
}
