//
//  AudioPlayerViewModel.swift
//  tune
//
//  Created by Ivan Almada on 9/5/24.
//

import Foundation

class AudioPlayerViewModel: ObservableObject {

    @Published var isPlaying: Bool

    private var standardGuitarTuner: StandardGuitarTuner
    private var halfStepDownGuitarTuner: HalfStepDownGuitarTuner

    init() {
        self.isPlaying = false
        self.standardGuitarTuner = StandardGuitarTuner()
        self.halfStepDownGuitarTuner = HalfStepDownGuitarTuner()
    }

    // Standard tuning methods

    func playLowEString() {
        isPlaying.toggle()
        standardGuitarTuner.playLowEString()
    }
    
    func playAString() {
        isPlaying.toggle()
        standardGuitarTuner.playAString()
    }
    
    func playDString() {
        isPlaying.toggle()
        standardGuitarTuner.playDString()
    }
    
    func playGString() {
        isPlaying.toggle()
        standardGuitarTuner.playGString()
    }
    
    func playBString() {
        isPlaying.toggle()
        standardGuitarTuner.playBString()
    }
    
    func playHighEString() {
        isPlaying.toggle()
        standardGuitarTuner.playHighEString()
    }

    // Half step down tuning methods

    func playLowDSharpString() {
        isPlaying.toggle()
        halfStepDownGuitarTuner.playLowDSharpString()
    }

    func playGSharpString() {
        isPlaying.toggle()
        halfStepDownGuitarTuner.playGSharpString()
    }

    func playCSharpString() {
        isPlaying.toggle()
        halfStepDownGuitarTuner.playCSharpString()
    }

    func playFSharpString() {
        isPlaying.toggle()
        halfStepDownGuitarTuner.playFSharpString()
    }

    func playASharpString() {
        isPlaying.toggle()
        halfStepDownGuitarTuner.playASharpString()
    }

    func playHighDSharpString() {
        isPlaying.toggle()
        halfStepDownGuitarTuner.playHighDSharpString()
    }

}
