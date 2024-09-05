//
//  AudioPlayer.swift
//  tune
//
//  Created by Ivan Almada on 9/5/24.
//

import Foundation
import AVKit

protocol IAudioPlayer {
    func playLowEString()
    func playAString()
    func playDString()
    func playGString()
    func playBString()
    func playHighEString()
}

class AudioPlayer: IAudioPlayer {

    func playLowEString() {
        print("Playing Low E string")
    }
    
    func playAString() {
        print("Playing A string")
    }
    
    func playDString() {
        print("Playing D string")
    }
    
    func playGString() {
        print("Playing G string")
    }
    
    func playBString() {
        print("Playing B string")
    }
    
    func playHighEString() {
        print("Playing High E string")
    }

}
