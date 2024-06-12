//
//  PlayView.swift
//  Aula5
//
//  Created by Turma02-Backup on 12/06/24.
//

import SwiftUI

struct PlayView: View {
    var song: Song
    
    var body: some View {
        VStack {
            Spacer()
            AsyncImage(url: URL(string: song.capa)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
            } placeholder: {
                Color.gray
            }
            .frame(width: 200, height: 200)
            VStack(alignment: .leading) {
                Text(song.name)
                    .font(.headline)
                Text(song.artist)
            }
            Spacer()
            HStack(spacing: 50){
                Image(systemName: "shuffle")
                Image(systemName: "backward.end.fill")
                Image(systemName: "play.fill")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Image(systemName: "forward.end.fill")
                Image(systemName: "repeat")
            }
            Spacer()
        }
    }
}

#Preview {
    PlayView(song: Song(id: 1, name: "Test", artist: "Test", capa: "https://i.scdn.co/image/ab6761610000e5ebafa413afdda6f07a6e9fa938"))
}
    
