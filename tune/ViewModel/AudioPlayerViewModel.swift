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
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now().advanced(by: DispatchTimeInterval.seconds(2)), execute: DispatchWorkItem(block: {
            print("Finished playing Low E string")
            self.isPlaying = false
        }))
    }
    
    func playAString() {
        player.playAString()
        isPlaying = true
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now().advanced(by: DispatchTimeInterval.seconds(2)), execute: DispatchWorkItem(block: {
            print("Finished playing A string")
            self.isPlaying = false
        }))
    }
    
    func playDString() {
        player.playDString()
        isPlaying = true
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now().advanced(by: DispatchTimeInterval.seconds(2)), execute: DispatchWorkItem(block: {
            print("Finished playing D string")
            self.isPlaying = false
        }))
    }
    
    func playGString() {
        player.playGString()
        isPlaying = true
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now().advanced(by: DispatchTimeInterval.seconds(2)), execute: DispatchWorkItem(block: {
            print("Finished playing G string")
            self.isPlaying = false
        }))
    }
    
    func playBString() {
        player.playBString()
        isPlaying = true
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now().advanced(by: DispatchTimeInterval.seconds(2)), execute: DispatchWorkItem(block: {
            print("Finished playing B string")
            self.isPlaying = false
        }))
    }
    
    func playHighEString() {
        player.playHighEString()
        isPlaying = true
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now().advanced(by: DispatchTimeInterval.seconds(2)), execute: DispatchWorkItem(block: {
            print("Finished playing High E string")
            self.isPlaying = false
        }))
    }

}
