//
//  ContentView.swift
//  Aula5
//
//  Created by Turma02-Backup on 12/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                Image(.background)
                    .resizable()
                    .frame(width: 200, height: 200)
                VStack(alignment: .leading, spacing: 20) {
                    VStack {
                        Text("HackaFM")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        HStack {
                            Image(.background)
                                .resizable()
                                .frame(width: 20, height: 20)
                            Text("HackaSong")
                        }
                    }
                    
                    ForEach(arrayMusicas) { m in
                        NavigationLink(
                            destination: PlayView(song: m)
                        ) {
                            HStack {
                                AsyncImage(url: URL(string: m.capa)) { image in
                                    image
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                    
                                } placeholder: {
                                    Color.gray
                                }
                                .frame(width: 50, height: 50)
                                VStack(alignment: .leading) {
                                    Text(m.name)
                                        .font(.headline)
                                    Text(m.artist)
                                }
                                Spacer()
                                Image(systemName: "ellipsis")
                            }
                        }
                    }
                    Spacer()
                }
                .padding()
            }
        }
    }
}


#Preview {
    ContentView()
}
