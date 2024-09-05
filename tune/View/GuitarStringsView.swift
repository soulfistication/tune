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
                print("E string tapped")
            } label: {
                Text("E")
                    .font(.title)
                    .fontWeight(.bold)
            }
            .padding(.vertical)
            Button {
                print("A string tapped")
            } label: {
                Text("A")
                    .font(.title)
                    .fontWeight(.bold)
            }
            .padding(.vertical)
            Button {
                print("D string tapped")
            } label: {
                Text("D")
                    .font(.title)
                    .fontWeight(.bold)
            }
            .padding(.vertical)
            Button {
                print("G string tapped")
            } label: {
                Text("G")
                    .font(.title)
                    .fontWeight(.bold)
            }
            .padding(.vertical)
            Button {
                print("B string tapped")
            } label: {
                Text("B")
                    .font(.title)
                    .fontWeight(.bold)
            }
            .padding(.vertical)
            Button {
                print("High E string tapped")
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
