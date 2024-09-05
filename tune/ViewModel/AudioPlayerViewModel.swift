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
    }
    
    func playAString() {
        player.playAString()
        isPlaying = true
    }
    
    func playDString() {
        player.playDString()
        isPlaying = true
    }
    
    func playGString() {
        player.playGString()
        isPlaying = true
    }
    
    func playBString() {
        player.playBString()
        isPlaying = true
    }
    
    func playHighEString() {
        player.playHighEString()
        isPlaying = true
    }

}
