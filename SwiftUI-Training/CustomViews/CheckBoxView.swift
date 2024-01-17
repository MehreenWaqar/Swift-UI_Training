//
//  CheckBoxView.swift
//  SwiftUI-Training
//
//  Created by Mehreen Waqar on 01/01/2024.
//

import SwiftUI


//MARK: - CheckBoxView
struct CheckBoxView: View {
    @Binding var checked: Bool

    var body: some View {
        HStack(alignment: .top, spacing: 8) {
            Image(checked ? "tick" : "Empty")
                .resizable()
                .frame(width: 16, height: 16)
                .onTapGesture {
                    self.checked.toggle()
                }
            Text("I would like to receive your newsletter and other promotional information.")
                .frame(width: 320, alignment: .topLeading)
                .font(Font.custom("Inter", size: 14))
                .multilineTextAlignment(.leading)
                .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
        }
        .padding(0)
        .frame(width: 343, height: 50, alignment: .top)
    }
}

struct CheckBoxView_Previews: PreviewProvider {
    struct CheckBoxViewHolder: View {
        @State var checked = false

        var body: some View {
            CheckBoxView(checked: $checked)
        }
    }

    static var previews: some View {
        CheckBoxViewHolder()
    }
}
