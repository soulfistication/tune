//
//  AudioPlayerViewModel.swift
//  tune
//
//  Created by Ivan Almada on 9/5/24.
//

import Foundation

class AudioPlayerViewModel: ObservableObject, IAudioPlayer {

    @Published var isPlaying: Bool

    private var player: AudioPlayer

    init(player: AudioPlayer) {
        self.player = player
        self.isPlaying = false
    }

    func playLowEString() {
        player.playLowEString()
        isPlaying = true
        simulatePlaySound()
    }
    
    func playAString() {
        player.playAString()
        isPlaying = true
        simulatePlaySound()
    }
    
    func playDString() {
        player.playDString()
        isPlaying = true
        simulatePlaySound()
    }
    
    func playGString() {
        player.playGString()
        isPlaying = true
        simulatePlaySound()
    }
    
    func playBString() {
        player.playBString()
        isPlaying = true
        simulatePlaySound()
    }
    
    func playHighEString() {
        player.playHighEString()
        isPlaying = true
        simulatePlaySound()
    }

    func simulatePlaySound() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            print("Finished playing Low E string")
            self.isPlaying = false
        }
    }

}
