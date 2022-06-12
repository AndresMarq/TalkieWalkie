//
//  MicrophoneButtonView.swift
//  TalkieWalkie
//
//  Created by Andres Marquez on 2022-06-11.
//

import SwiftUI

struct MicrophoneButtonView: View {
    let name: String
    @State private var isOnCall = false
    
    var body: some View {
        Button {
            // To do
            isOnCall.toggle()
        } label: {
            Image(systemName: "mic.circle.fill")
                .accessibilityLabel("Talk to \(name)")
                .font(.largeTitle)
                .foregroundColor(isOnCall ? Color.red : Color.blue)
        }
    }
}

struct MicrophoneButtonView_Previews: PreviewProvider {
    static var previews: some View {
        MicrophoneButtonView(name: "Jon")
    }
}
