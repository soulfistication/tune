//
//  IAudioPlayer.swift
//  tune
//
//  Created by Ivan Almada on 9/5/24.
//

protocol GuitarTuner {
    //MARK:- Standard tuning
    func playLowEString()
    func playAString()
    func playDString()
    func playGString()
    func playBString()
    func playHighEString()
    //MARK: - Half step down tuning
    func playLowDSharpString()
    func playGSharpString()
    func playCSharpString()
    func playFSharpString()
    func playASharpString()
    func playHighDSharpString()
}
