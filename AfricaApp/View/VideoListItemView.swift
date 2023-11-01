//
//  VideoListItem.swift
//  AfricaApp
//
//  Created by Muhammet Eren on 27.10.2023.
//

import SwiftUI

struct VideoListItemView: View {
    let video:Video
    var body: some View {
        HStack(spacing:10) {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                    .cornerRadius(9)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            }
            VStack(alignment:.leading,spacing: 10){
                Text(video.name)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            }
        }
    }
}

struct VideoListItem_Previes: PreviewProvider{
    static let videos:[Video] = Bundle.main.decode("videos.json")
    static var previews: some View{
        VideoListItemView(video: videos[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}