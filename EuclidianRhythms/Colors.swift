//
//  Colors.swift
//  EuclidianRhythms
//
//  Created by Rival on 12/08/23.
//

import SwiftUI

enum Colors: String {
    case primary = "PrimaryColor"
    case secondary = "SecondaryColor"
    case tertiary = "TertiaryColor"
    case accent = "AccentColor"
    case hightlight = "HighlightColor"
    case text = "TextColor"
    
    var value: Color {
        return Color(self.rawValue)
    }
}
