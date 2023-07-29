//
//  SequencerView.swift
//  EuclidianRhythms
//
//  Created by Rival on 27/07/23.
//

import SwiftUI

struct SequencerView: View {
    @Binding var sequencer: [Int]
    var body: some View {
        if(!sequencer.isEmpty)
        {
            HStack {
                ForEach(sequencer.indices, id: \.self ) { index in
                    Rectangle()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 15.0)
                        .foregroundColor(sequencer[index] == 0 ? Color( .white) : Color("AccentColor"))
                }
            }
            .padding(.vertical)
        } else
        {
            Text("Result")
                .padding(.all)
        }
    }
    
    
}
