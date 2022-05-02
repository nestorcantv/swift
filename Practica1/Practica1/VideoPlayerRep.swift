//
//  VideoPlayer.swift
//  Practica1
//
//  Created by mac on 02/05/22.
//

import SwiftUI
import AVKit

struct VideoPlayerRep: View {
    @State var isVideoPlayerActive: Bool = false
    var body: some View {
        NavigationView{
            
            VStack {
                
                ZStack {
                    Button(action: {
                        isVideoPlayerActive = true
                    }, label: {
                        Image("turtlerock").resizable().aspectRatio(contentMode: .fit).frame(height: 200.0)
                    }).frame(width: 350, height: 200, alignment: .center).background(Color.black)
                    Image(systemName: "play.fill").resizable().frame(width: 50, height: 50, alignment: .center).foregroundColor(.white)
                }
                
                NavigationLink(destination: VideoPlayer(player: AVPlayer(url: URL(string: "https://youtu.be/frOIAn43v4o")!)), isActive: $isVideoPlayerActive, label: {EmptyView()})
            }
        }
    }
}

struct VideoPlayer_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerRep()
    }
}
