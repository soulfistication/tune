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
        self.isPlaying = player.isPlaying()
    }

    func playLowEString() {
        isPlaying.toggle()
        player.playLowEString()
    }
    
    func playAString() {
        isPlaying.toggle()
        player.playAString()
    }
    
    func playDString() {
        isPlaying.toggle()
        player.playDString()
    }
    
    func playGString() {
        isPlaying.toggle()
        player.playGString()
    }
    
    func playBString() {
        isPlaying.toggle()
        player.playBString()
    }
    
    func playHighEString() {
        isPlaying.toggle()
        player.playHighEString()
    }

}
