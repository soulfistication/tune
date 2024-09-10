//
//  AudioPlayer.swift
//  tune
//
//  Created by Ivan Almada on 9/5/24.
//

import Foundation
import AVFAudio

class AudioPlayer {

    let lowEStringPlayer: AVAudioPlayer
    let aStringPlayer: AVAudioPlayer
    let dStringPlayer: AVAudioPlayer
    let gStringPlayer: AVAudioPlayer
    let bStringPlayer: AVAudioPlayer
    let highEStringPlayer: AVAudioPlayer

    init?() {
        guard let lowEStringURL = Bundle.main.url(forResource: "lowEString", withExtension: ".mp3") else { return nil }
        guard let aStringURL = Bundle.main.url(forResource: "aString", withExtension: ".mp3") else { return nil }
        guard let dStringURL = Bundle.main.url(forResource: "dString", withExtension: ".mp3") else { return nil }
        guard let gStringURL = Bundle.main.url(forResource: "gString", withExtension: ".mp3") else { return nil }
        guard let bStringURL = Bundle.main.url(forResource: "bString", withExtension: ".mp3") else { return nil }
        guard let highEStringURL = Bundle.main.url(forResource: "highEString", withExtension: ".mp3") else { return nil }

        do {
            lowEStringPlayer = try AVAudioPlayer(contentsOf: lowEStringURL, fileTypeHint: ".mp3")
            aStringPlayer = try AVAudioPlayer(contentsOf: aStringURL, fileTypeHint: ".mp3")
            dStringPlayer = try AVAudioPlayer(contentsOf: dStringURL, fileTypeHint: ".mp3")
            gStringPlayer = try AVAudioPlayer(contentsOf: gStringURL, fileTypeHint: ".mp3")
            bStringPlayer = try AVAudioPlayer(contentsOf: bStringURL, fileTypeHint: ".mp3")
            highEStringPlayer = try AVAudioPlayer(contentsOf: highEStringURL, fileTypeHint: ".mp3")

        } catch {
            print("Failed to init AVAudioPlayers")
            return nil
        }

        lowEStringPlayer.prepareToPlay()
        aStringPlayer.prepareToPlay()
        dStringPlayer.prepareToPlay()
        gStringPlayer.prepareToPlay()
        bStringPlayer.prepareToPlay()
        highEStringPlayer.prepareToPlay()
    }

    func playLowEString() {
        print("Playing Low E string")
        lowEStringPlayer.play()
    }
    
    func playAString() {
        print("Playing A string")
        aStringPlayer.play()
    }
    
    func playDString() {
        print("Playing D string")
        dStringPlayer.play()
    }
    
    func playGString() {
        print("Playing G string")
        gStringPlayer.play()
    }
    
    func playBString() {
        print("Playing B string")
        bStringPlayer.play()
    }
    
    func playHighEString() {
        print("Playing High E string")
        highEStringPlayer.play()
    }

}
