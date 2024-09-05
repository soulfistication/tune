//
//  GuitarStringView.swift
//  tune
//
//  Created by Ivan Almada on 9/5/24.
//

import SwiftUI

struct GuitarStringsView: View {

    @ObservedObject var viewModel: AudioPlayerViewModel

    var body: some View {
        VStack {
            Button {
                viewModel.playLowEString()
            } label: {
                Text("E")
                    .font(.title)
                    .fontWeight(.bold)
            }
            .padding(.vertical)
            Button {
                viewModel.playAString()
            } label: {
                Text("A")
                    .font(.title)
                    .fontWeight(.bold)
            }
            .padding(.vertical)
            Button {
                viewModel.playDString()
            } label: {
                Text("D")
                    .font(.title)
                    .fontWeight(.bold)
            }
            .padding(.vertical)
            Button {
                viewModel.playGString()
            } label: {
                Text("G")
                    .font(.title)
                    .fontWeight(.bold)
            }
            .padding(.vertical)
            Button {
                viewModel.playBString()
            } label: {
                Text("B")
                    .font(.title)
                    .fontWeight(.bold)
            }
            .padding(.vertical)
            Button {
                viewModel.playHighEString()
            } label: {
                Text("E")
                    .font(.title)
                    .fontWeight(.bold)
            }
            .padding(.vertical)
            Text("Status: Playing = \(viewModel.isPlaying)")
                .font(.caption2)
                .padding(.vertical)
        }
        .padding()
    }
}

#Preview {
    GuitarStringsView(viewModel: AudioPlayerViewModel(player: AudioPlayer()))
}
