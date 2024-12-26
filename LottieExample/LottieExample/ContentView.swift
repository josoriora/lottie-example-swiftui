//
//  ContentView.swift
//  LottieExample
//
//  Created by JULIAN OSORIO RAMIREZ on 26/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Lottie Animation Example")
                .font(.largeTitle)
                .padding()

            // Lottie Animation View
            LottieView(animationName: "cat_animation", loopMode: .loop)
                .frame(width: 200, height: 200) // Set the size of the animation

            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
