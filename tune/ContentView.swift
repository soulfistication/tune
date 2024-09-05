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
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
            }
            .padding(.vertical)
            Button {
                print("A string tapped")
            } label: {
                Text("A")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
            }
            .padding(.vertical)
            Button {
                print("D string tapped")
            } label: {
                Text("D")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
            }
            .padding(.vertical)
            Button {
                print("G string tapped")
            } label: {
                Text("G")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
            }
            .padding(.vertical)
            Button {
                print("B string tapped")
            } label: {
                Text("B")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
            }
            .padding(.vertical)
            Button {
                print("High E string tapped")
            } label: {
                Text("E")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
            }
            .padding(.vertical)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
