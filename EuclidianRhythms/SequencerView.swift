//
//  SequencerView.swift
//  EuclidianRhythms
//
//  Created by Rival on 27/07/23.
//

import SwiftUI

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
                            Rectangle()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 15.0)
                                .foregroundColor(pattern[i] == 0 ? Color( .white) : Color("AccentColor"))
                        }
                    }
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
