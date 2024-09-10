//
//  AudioPlayer.swift
//  tune
//
//  Created by Ivan Almada on 9/5/24.
//

import AVFAudio

class AudioPlayer {

    let lowEStringPlayer: AVAudioPlayer
    let aStringPlayer: AVAudioPlayer
    let dStringPlayer: AVAudioPlayer
    let gStringPlayer: AVAudioPlayer
    let bStringPlayer: AVAudioPlayer
    let highEStringPlayer: AVAudioPlayer

    init?() {
        guard let 
                lowEStringURL = Bundle.main.url(forResource: Config.lowEStringFileName,
                                                withExtension: Config.fileExtension),
              let aStringURL = Bundle.main.url(forResource: Config.aStringFileName,
                                               withExtension: Config.fileExtension),
              let dStringURL = Bundle.main.url(forResource: Config.dStringFileName,
                                               withExtension: Config.fileExtension),
              let gStringURL = Bundle.main.url(forResource: Config.gStringFileName,
                                               withExtension: Config.fileExtension),
              let bStringURL = Bundle.main.url(forResource: Config.bStringFileName,
                                               withExtension: Config.fileExtension),
              let highEStringURL = Bundle.main.url(forResource: Config.highEStringFileName,
                                                   withExtension: Config.fileExtension)
        else { return nil }

        do {
            lowEStringPlayer = try AVAudioPlayer(contentsOf: lowEStringURL,
                                                 fileTypeHint: Config.fileExtension)
            aStringPlayer = try AVAudioPlayer(contentsOf: aStringURL, 
                                              fileTypeHint: Config.fileExtension)
            dStringPlayer = try AVAudioPlayer(contentsOf: dStringURL,
                                              fileTypeHint: Config.fileExtension)
            gStringPlayer = try AVAudioPlayer(contentsOf: gStringURL,
                                              fileTypeHint: Config.fileExtension)
            bStringPlayer = try AVAudioPlayer(contentsOf: bStringURL,
                                              fileTypeHint: Config.fileExtension)
            highEStringPlayer = try AVAudioPlayer(contentsOf: highEStringURL,
                                                  fileTypeHint: Config.fileExtension)

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
        if lowEStringPlayer.isPlaying {
            lowEStringPlayer.stop()
        } else {
            lowEStringPlayer.play()
        }
    }
    
    func playAString() {
        if aStringPlayer.isPlaying {
            aStringPlayer.stop()
        } else {
            aStringPlayer.play()
        }
    }
    
    func playDString() {
        if dStringPlayer.isPlaying {
            dStringPlayer.stop()
        } else {
            dStringPlayer.play()
        }
    }
    
    func playGString() {
        if gStringPlayer.isPlaying {
            gStringPlayer.stop()
        } else {
            gStringPlayer.play()
        }
    }
    
    func playBString() {
        if bStringPlayer.isPlaying {
            bStringPlayer.stop()
        } else {
            bStringPlayer.play()
        }
    }
    
    func playHighEString() {
        if highEStringPlayer.isPlaying {
            highEStringPlayer.stop()
        } else {
            highEStringPlayer.play()
        }
    }

    func isPlaying() -> Bool {
        return lowEStringPlayer.isPlaying ||
        aStringPlayer.isPlaying ||
        dStringPlayer.isPlaying ||
        gStringPlayer.isPlaying ||
        bStringPlayer.isPlaying ||
        highEStringPlayer.isPlaying
    }

}
