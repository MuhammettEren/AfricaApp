//
//  VideoPlayerView.swift
//  AfricaApp
//
//  Created by Muhammet Eren on 27.10.2023.
//

import SwiftUI
import AVKit
struct VideoPlayerView: View {
    var videoSelected: String
    var videoTitle: String

    var body: some View {
        VStack {
            VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: videoSelected, withExtension: "mp4")!))
            // Text(videoTitle)
        }
        .overlay(
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .padding(.top, 6)
                .padding(.horizontal, 8),
            alignment: .topLeading
        )
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle, displayMode: .inline)
    }
}



#Preview {
    NavigationView {
        VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
    }
}
