//
//  LottieView.swift
//  LottieExample
//
//  Created by JULIAN OSORIO RAMIREZ on 26/12/24.
//

import SwiftUI
import Lottie

struct LottieView: View {
    var animationName: String
    var loopMode: LottieLoopMode
    var contentMode: UIView.ContentMode
    var speed: CGFloat

    private let animationView = LottieAnimationView()

    init(animationName: String, loopMode: LottieLoopMode = .loop, contentMode: UIView.ContentMode = .scaleAspectFill, speed: CGFloat = 1.0) {
        self.animationName = animationName
        self.loopMode = loopMode
        self.contentMode = contentMode
        self.speed = speed
    }

    var body: some View {
        LottieViewRepresentable(animationName: animationName, loopMode: loopMode, contentMode: contentMode, speed: speed)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct LottieViewRepresentable: UIViewRepresentable {
    var animationName: String
    var loopMode: LottieLoopMode
    var contentMode: UIView.ContentMode
    var speed: CGFloat

    func makeUIView(context: Context) -> UIView {
        let view = UIView()

        let animationView = LottieAnimationView(name: animationName)
        animationView.loopMode = loopMode
        animationView.animationSpeed = speed
        animationView.contentMode = contentMode
        animationView.frame = view.bounds
        animationView.autoresizingMask = [.flexibleWidth, .flexibleHeight]

        view.addSubview(animationView)
        animationView.play()

        return view
    }

    func updateUIView(_ uiView: UIView, context: Context) {
        // This method allows the animation to update as the state changes.
    }
}

