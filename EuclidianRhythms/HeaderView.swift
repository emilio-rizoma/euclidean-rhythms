//
//  HeaderView.swift
//  EuclidianRhythms
//
//  Created by Rival on 27/07/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack {
            Image(systemName: "circle.dotted")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120.0)
                .foregroundColor(Colors.accent.value)
            Text("Euclidian Rhythms!")
                .font(Font.custom("VG5000-Regular", size: 28))
                .foregroundColor(Colors.text.value)
        }
    }
}
