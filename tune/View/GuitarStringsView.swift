//
//  GuitarStringView.swift
//  tune
//
//  Created by Ivan Almada on 9/5/24.
//

import SwiftUI

struct GuitarStringsView: View {

    @State private var standard = Config.standardTuning
    @StateObject var viewModel: AudioPlayerViewModel

    var body: some View {
        VStack {
            Text("Ivan's Guitar tuner 🎸")
                .font(.title)
                .fontWeight(.bold)
            Button {
                viewModel.playLowEString()
            } label: {
                if standard {
                    Text(Config.lowEString)
                        .font(.title)
                        .fontWeight(.bold)
                } else {
                    Text(Config.lowDSharp)
                        .font(.title)
                        .fontWeight(.bold)
                }
            }
            .padding(.vertical)
            Button {
                viewModel.playAString()
            } label: {
                if standard {
                    Text(Config.aString)
                        .font(.title)
                        .fontWeight(.bold)
                } else {
                    Text(Config.gSharp)
                        .font(.title)
                        .fontWeight(.bold)
                }
            }
            .padding(.vertical)
            Button {
                viewModel.playDString()
            } label: {
                if standard {
                    Text(Config.dString)
                        .font(.title)
                        .fontWeight(.bold)
                } else {
                    Text(Config.cSharp)
                        .font(.title)
                        .fontWeight(.bold)
                }
            }
            .padding(.vertical)
            Button {
                viewModel.playGString()
            } label: {
                if standard {
                    Text(Config.gString)
                        .font(.title)
                        .fontWeight(.bold)
                } else {
                    Text(Config.fSharp)
                        .font(.title)
                        .fontWeight(.bold)
                }
            }
            .padding(.vertical)
            Button {
                viewModel.playBString()
            } label: {
                if standard {
                    Text(Config.bString)
                        .font(.title)
                        .fontWeight(.bold)
                } else {
                    Text(Config.aSharp)
                        .font(.title)
                        .fontWeight(.bold)
                }
            }
            .padding(.vertical)
            Button {
                viewModel.playHighEString()
            } label: {
                if standard {
                    Text(Config.highEString)
                        .font(.title)
                        .fontWeight(.bold)
                } else {
                    Text(Config.highDSharp)
                        .font(.title)
                        .fontWeight(.bold)
                }
            }
            .padding(.vertical)
            if viewModel.isPlaying {
                Image(systemName: "play.circle.fill")
                    .imageScale(.large)
                    .padding(.vertical)
            } else {
                Image(systemName: "pause.circle.fill")
                    .imageScale(.large)
                    .padding(.vertical)
            }
            Toggle(isOn: $standard) {
                Text("Standard or Half step down")
                    .bold()
                    .padding()
            }.padding()
        }
        .padding()
    }
}

#Preview {
    GuitarStringsView(viewModel: AudioPlayerViewModel(player: AudioPlayer(standard: Config.standardTuning) ?? AudioPlayer()))
}
