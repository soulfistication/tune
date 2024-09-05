//
//  ContentView.swift
//  tune
//
//  Created by Ivan Almada on 9/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button {
                print("E string tapped")
            } label: {
                Text("E")
            }
            Button {
                print("A string tapped")
            } label: {
                Text("A")
            }
            Button {
                print("D string tapped")
            } label: {
                Text("D")
            }
            Button {
                print("G string tapped")
            } label: {
                Text("G")
            }
            Button {
                print("B string tapped")
            } label: {
                Text("B")
            }
            Button {
                print("Hight E string tapped")
            } label: {
                Text("E")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
