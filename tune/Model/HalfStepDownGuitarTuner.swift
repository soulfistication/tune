//
//  HalfStepDownGuitarTuner.swift
//  tune
//
//  Created by Ivan Almada on 9/14/24.
//

import AVFAudio

public class HalfStepDownGuitarTuner {

    private var lowDSharpStringPlayer: AVAudioPlayer
    private var gSharpStringPlayer: AVAudioPlayer
    private var cSharpStringPlayer: AVAudioPlayer
    private var fSharpStringPlayer: AVAudioPlayer
    private var aSharpStringPlayer: AVAudioPlayer
    private var highDSharpStringPlayer: AVAudioPlayer

    init() {
        guard let lowDSharpStringURL = Bundle.main.url(forResource: Config.lowDSharpStringFileName,
                                                       withExtension: Config.fileExtension),
              let gSharpStringURL = Bundle.main.url(forResource: Config.gSharpStringFileName,
                                                    withExtension: Config.fileExtension),
              let cSharpStringURL = Bundle.main.url(forResource: Config.cSharpStringFileName,
                                                    withExtension: Config.fileExtension),
              let fSharpStringURL = Bundle.main.url(forResource: Config.fSharpStringFileName,
                                                    withExtension: Config.fileExtension),
              let aSharpStringURL = Bundle.main.url(forResource: Config.aSharpStringFileName,
                                                    withExtension: Config.fileExtension),
              let highDSharpStringURL = Bundle.main.url(forResource: Config.highDSharpStringFileName,
                                                        withExtension: Config.fileExtension)
        else {
            let outputURL = Bundle.main.url(forResource: "output", withExtension: ".mp3")!
            lowDSharpStringPlayer = try! AVAudioPlayer(contentsOf: outputURL, fileTypeHint: ".mp3")
            gSharpStringPlayer = try! AVAudioPlayer(contentsOf: outputURL, fileTypeHint: ".mp3")
            cSharpStringPlayer = try! AVAudioPlayer(contentsOf: outputURL, fileTypeHint: ".mp3")
            fSharpStringPlayer = try! AVAudioPlayer(contentsOf: outputURL, fileTypeHint: ".mp3")
            aSharpStringPlayer = try! AVAudioPlayer(contentsOf: outputURL, fileTypeHint: ".mp3")
            highDSharpStringPlayer = try! AVAudioPlayer(contentsOf: outputURL, fileTypeHint: ".mp3")
            return
        }

        do {
            lowDSharpStringPlayer = try AVAudioPlayer(contentsOf: lowDSharpStringURL,
                                                      fileTypeHint: Config.fileExtension)
            gSharpStringPlayer = try AVAudioPlayer(contentsOf: gSharpStringURL,
                                                   fileTypeHint: Config.fileExtension)
            cSharpStringPlayer = try AVAudioPlayer(contentsOf: cSharpStringURL,
                                                   fileTypeHint: Config.fileExtension)
            fSharpStringPlayer = try AVAudioPlayer(contentsOf: fSharpStringURL,
                                                   fileTypeHint: Config.fileExtension)
            aSharpStringPlayer = try AVAudioPlayer(contentsOf: aSharpStringURL,
                                                   fileTypeHint: Config.fileExtension)
            highDSharpStringPlayer = try AVAudioPlayer(contentsOf: highDSharpStringURL,
                                                       fileTypeHint: Config.fileExtension)
        } catch {
            let outputURL = Bundle.main.url(forResource: "output", withExtension: ".mp3")!
            lowDSharpStringPlayer = try! AVAudioPlayer(contentsOf: outputURL, fileTypeHint: ".mp3")
            gSharpStringPlayer = try! AVAudioPlayer(contentsOf: outputURL, fileTypeHint: ".mp3")
            cSharpStringPlayer = try! AVAudioPlayer(contentsOf: outputURL, fileTypeHint: ".mp3")
            fSharpStringPlayer = try! AVAudioPlayer(contentsOf: outputURL, fileTypeHint: ".mp3")
            aSharpStringPlayer = try! AVAudioPlayer(contentsOf: outputURL, fileTypeHint: ".mp3")
            highDSharpStringPlayer = try! AVAudioPlayer(contentsOf: outputURL, fileTypeHint: ".mp3")
        }

        lowDSharpStringPlayer.prepareToPlay()
        gSharpStringPlayer.prepareToPlay()
        cSharpStringPlayer.prepareToPlay()
        fSharpStringPlayer.prepareToPlay()
        aSharpStringPlayer.prepareToPlay()
        highDSharpStringPlayer.prepareToPlay()
    }

    func playLowDSharpString() {
        if lowDSharpStringPlayer.isPlaying {
            lowDSharpStringPlayer.stop()
        } else {
            lowDSharpStringPlayer.play()
        }
    }

    func playGSharpString() {
        if gSharpStringPlayer.isPlaying {
            gSharpStringPlayer.stop()
        } else {
            gSharpStringPlayer.play()
        }
    }

    func playCSharpString() {
        if cSharpStringPlayer.isPlaying {
            cSharpStringPlayer.stop()
        } else {
            cSharpStringPlayer.play()
        }
    }

    func playFSharpString() {
        if fSharpStringPlayer.isPlaying {
            fSharpStringPlayer.stop()
        } else {
            fSharpStringPlayer.play()
        }
    }

    func playASharpString() {
        if aSharpStringPlayer.isPlaying {
            aSharpStringPlayer.stop()
        } else {
            aSharpStringPlayer.play()
        }
    }

    func playHighDSharpString() {
        if highDSharpStringPlayer.isPlaying {
            highDSharpStringPlayer.stop()
        } else {
            highDSharpStringPlayer.play()
        }
    }

    func isPlaying() -> Bool {
        return lowDSharpStringPlayer.isPlaying ||
        gSharpStringPlayer.isPlaying ||
        cSharpStringPlayer.isPlaying ||
        fSharpStringPlayer.isPlaying ||
        aSharpStringPlayer.isPlaying ||
        highDSharpStringPlayer.isPlaying
    }
}
