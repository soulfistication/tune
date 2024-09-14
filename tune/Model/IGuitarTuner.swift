//
//  IAudioPlayer.swift
//  tune
//
//  Created by Ivan Almada on 9/5/24.
//

protocol IGuitarTuner {
    //MARK:- Standard tuning
    func playLowEString()
    func playAString()
    func playDString()
    func playGString()
    func playBString()
    func playHighEString()
}

protocol IHalfStepDownGuitarTuner {
    //MARK: - Half step down tuning
    func playLowDSharpString()
    func playGSharpString()
    func playCSharpString()
    func playFSharpString()
    func playASharpString()
    func playHighDSharpString()
}
