//
//  Models.swift
//  Aula6
//
//  Created by Turma02-Backup on 13/06/24.
//

import Foundation
import MapKit

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let flag: String
    let description: String
}

var arrCountries = [
    Location(name: "Brasil", coordinate: CLLocationCoordinate2D(latitude: -20.276138, longitude: -40.302497), flag: "https://upload.wikimedia.org/wikipedia/en/thumb/0/05/Flag_of_Brazil.svg/1200px-Flag_of_Brazil.svg.png", description: "Brasil"),
    Location(name: "Estados Unidos", coordinate: CLLocationCoordinate2D(latitude: 38.828910, longitude: -76.917076), flag: "https://cdn.britannica.com/33/4833-004-828A9A84/Flag-United-States-of-America.jpg", description: "Estados Unidos"),
    Location(name: "Alemanha", coordinate: CLLocationCoordinate2D(latitude: 52.498672, longitude: 9.627008), flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Flag_of_Germany.svg/255px-Flag_of_Germany.svg.png", description: "Alemanha"),
    Location(name: "Africa do Sul", coordinate: CLLocationCoordinate2D(latitude: -32.038306, longitude: 23.901483), flag: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvh9YkaoLU-YZQAu6Ra5HH9uci6J97xzLSBw&s", description: "Africa do sul"),
    Location(name: "Australia", coordinate: CLLocationCoordinate2D(latitude: -25.852771, longitude: 134.686569), flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/Flag_of_Australia.svg/2560px-Flag_of_Australia.svg.png", description: "Australia")
]
