//
//  SequencerView.swift
//  EuclidianRhythms
//
//  Created by Rival on 27/07/23.
//

import SwiftUI

struct StepView: View {
    @State var step: Int
    @State var pulse: Int

    var body: some View {
        RoundedRectangle(cornerSize: CGSize(width: 1.5, height: 1.5))
        .aspectRatio(contentMode: .fit)
        .foregroundColor(pulse == 0 ? Colors.secondary.value : Colors.accent.value)
        .border(step % 4 == 0 ? Colors.hightlight.value : Colors.secondary.value, width: 1.5)
    }
}

struct SequencerView: View {
    @Binding var sequencer: [Euclidian]
    var body: some View {
        if(!sequencer.isEmpty)
        {
            VStack(alignment: .leading) {
                ForEach(sequencer, id: \.id) { chunk in
                    HStack{
                        ForEach(chunk.pattern.indices, id: \.self ) { i in
                            let pattern = chunk.pattern
                            Text("\(i + 1)")
                                .foregroundColor(.white)
                                .font(.system(size: 12.0))
                                .frame(maxWidth: 14)
                                .background(StepView(step: i, pulse: pattern[i]))
                                .padding(.vertical, 2)
                        }
                    }
                }
            }
            .padding(.vertical)
        } else
        {
            Text("Result")
                .foregroundColor(Colors.text.value)
                .padding(.all)
        }
    }
    
    
}
