//
//  ContentView.swift
//  tune
//
//  Created by Ivan Almada on 9/2/24.
//

import SwiftUI

struct ContentView: View {

    let viewModel = AudioPlayerViewModel(player: AudioPlayer()!)

    var body: some View {
        GuitarStringsView(viewModel: viewModel)
    }
}

#Preview {
    ContentView()
}
