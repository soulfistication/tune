//
//  AudioPlayer.swift
//  tune
//
//  Created by Ivan Almada on 9/5/24.
//

import AVFAudio

class AudioPlayer {

    private let standardTuning: Bool
    private let lowEStringPlayer: AVAudioPlayer
    private let aStringPlayer: AVAudioPlayer
    private let dStringPlayer: AVAudioPlayer
    private let gStringPlayer: AVAudioPlayer
    private let bStringPlayer: AVAudioPlayer
    private let highEStringPlayer: AVAudioPlayer

    init?(standard: Bool) {
        self.standardTuning = standard

        if standard {
            guard let lowEStringURL = Bundle.main.url(forResource: Config.lowEStringFileName,
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
                print("Failed to init standard AVAudioPlayers. Audio files not found")
                return nil
            }
        } else {
            guard let lowEStringURL = Bundle.main.url(forResource: Config.lowDSharpStringFileName,
                                                    withExtension: Config.fileExtension),
                  let aStringURL = Bundle.main.url(forResource: Config.gSharpStringFileName,
                                                   withExtension: Config.fileExtension),
                  let dStringURL = Bundle.main.url(forResource: Config.cSharpStringFileName,
                                                   withExtension: Config.fileExtension),
                  let gStringURL = Bundle.main.url(forResource: Config.fSharpStringFileName,
                                                   withExtension: Config.fileExtension),
                  let bStringURL = Bundle.main.url(forResource: Config.aSharpStringFileName,
                                                   withExtension: Config.fileExtension),
                  let highEStringURL = Bundle.main.url(forResource: Config.highDSharpStringFileName,
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
                print("Failed to init half step down AVAudioPlayers. Audio files not found")
                return nil
            }
        }

        lowEStringPlayer.prepareToPlay()
        aStringPlayer.prepareToPlay()
        dStringPlayer.prepareToPlay()
        gStringPlayer.prepareToPlay()
        bStringPlayer.prepareToPlay()
        highEStringPlayer.prepareToPlay()
    }

    init() {
        standardTuning = true
        let outputURL = Bundle.main.url(forResource: "output", withExtension: ".mp3")!
        lowEStringPlayer = try! AVAudioPlayer(contentsOf: outputURL, fileTypeHint: ".mp3")
        aStringPlayer = try! AVAudioPlayer(contentsOf: outputURL, fileTypeHint: ".mp3")
        dStringPlayer = try! AVAudioPlayer(contentsOf: outputURL, fileTypeHint: ".mp3")
        gStringPlayer = try! AVAudioPlayer(contentsOf: outputURL, fileTypeHint: ".mp3")
        bStringPlayer = try! AVAudioPlayer(contentsOf: outputURL, fileTypeHint: ".mp3")
        highEStringPlayer = try! AVAudioPlayer(contentsOf: outputURL, fileTypeHint: ".mp3")
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
