//
//  SliderView.swift
//  EuclidianRhythms
//
//  Created by Rival on 27/07/23.
//

import SwiftUI

struct SliderView: View {
    @Binding var val: Double
    @State var title: String
    @State private var isEditing = false
    var body: some View {
        VStack {
            Slider(
                value: $val,
                in: 1...64,
                step: 1,
                onEditingChanged: { editing in
                    isEditing = editing
                }
            )
            Text("\(title.uppercased()): \(Int(val))")
                .foregroundColor(isEditing ? .gray : .white)
        }
        .padding()
    }
}
