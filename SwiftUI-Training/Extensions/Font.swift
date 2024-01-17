//
//  Font.swift
//  SwiftUI-Training
//
//  Created by Mehreen Waqar on 01/01/2024.
//

import Foundation
import SwiftUI

extension Font {
    public static var semiBoldMedium: Font {
        return Font.custom("Inter", size: 16)
            .weight(.semibold)
    }
    public static var semiMedium: Font {
        return Font.custom("Inter", size: 16)
            .weight(.medium)
    }
    public static var semiBoldLarge: Font {
        return  Font.custom("Inter", size: 30)
            .weight(.semibold)
    }
   
}
