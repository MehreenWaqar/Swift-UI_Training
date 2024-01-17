//
//  SegmentControl.swift
//  SwiftUI-Training
//
//  Created by Mehreen Waqar on 26/12/2023.
//

import SwiftUI

struct SegmentControl: View {
 
    var segments: [String]
    @State var selectedSegment: String
    
    var body: some View {
            GeometryReader { geometry in
                HStack(spacing: 0) {
                    ForEach(segments, id: \.self) { currentSegment in
                        Button(action: {
                            selectedSegment = currentSegment
                        }, label: {
                            Text(currentSegment)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.primaryColor)
                            
                        })
                        .frame(width: geometry.size.width/2, height: 50)
                        .background(currentSegment == selectedSegment ? Color.white : Color.buttonBackgroundColor)
                        .cornerRadius(100)
                    }
                }
                .frame(width: geometry.size.width,height: 50, alignment: .top)
                .background(Color.buttonBackgroundColor)
                .cornerRadius(100)
                .overlay(
                    RoundedRectangle(cornerRadius: 100)
                    .stroke(Color.gray, lineWidth: 1)
                    )
            }
      
    }
}

#Preview {
    SegmentControl(segments: ["Posts","Photos"], selectedSegment: "Posts")
}
