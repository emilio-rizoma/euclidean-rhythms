//
//  ContentView.swift
//  EuclidianRhythms
//
//  Created by Rival on 24/07/23.
//

import SwiftUI

struct ContentView: View {
    @State private var steps = 13.0
    @State private var pulses = 5.0
    @State private var sequencer: [Int] = []
    var body: some View {
        ZStack() {
            Color("PrimaryColor").ignoresSafeArea()
            VStack {
                HeaderView().padding(.vertical)
                Spacer()
                SequencerView(sequencer: $sequencer)
                Spacer()
                SliderView(val: $steps)
                SliderView(val: $pulses)
                Spacer()
                Button("Generate") {
                    sequencer = EuclideanAlgorithm().generateEuclidean(steps: Int(steps), pulses: Int(pulses))
                }
                
            }
            .padding(.horizontal)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
