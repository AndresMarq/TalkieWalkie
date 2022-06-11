//
//  ContentView.swift
//  TalkieWalkie
//
//  Created by Andres Marquez on 2022-06-11.
//

import SwiftUI
import PushToTalk

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
