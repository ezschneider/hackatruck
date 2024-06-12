//
//  Model.swift
//  Aula5
//
//  Created by Turma02-Backup on 12/06/24.
//

import Foundation

struct Song : Identifiable {
    var id: Int
    var name: String
    var artist: String
    var capa: String
}

var placeHolder = "https://i.scdn.co/image/ab6761610000e5ebafa413afdda6f07a6e9fa938"
var arrayMusicas = [
    Song(id: 4, name: "Numb Encore", artist: "Linkin Park", capa: "https://i1.sndcdn.com/artworks-000082840509-ty2eem-t500x500.jpg"),
    Song(id: 5, name: "Lost", artist: "Linkin Park", capa: "https://i.scdn.co/image/ab67616d0000b2735d283816a23e9ac7511f1519"),
    Song(id: 6, name: "Musica Test", artist: "Artista Test", capa: placeHolder),
    Song(id: 7, name: "Musica Test", artist: "Artista Test", capa: placeHolder),
    Song(id: 8, name: "Musica Test", artist: "Artista Test", capa: placeHolder),
    Song(id: 9, name: "Musica Test", artist: "Artista Test", capa: placeHolder),
    Song(id: 10, name: "Musica Test", artist: "Artista Test", capa: placeHolder),
    Song(id: 11, name: "Musica Test", artist: "Artista Test", capa: placeHolder),
    Song(id: 12, name: "Musica Test", artist: "Artista Test", capa: placeHolder),
    Song(id: 13, name: "Musica Test", artist: "Artista Test", capa: placeHolder),
    Song(id: 14, name: "Musica Test", artist: "Artista Test", capa: placeHolder)
]
