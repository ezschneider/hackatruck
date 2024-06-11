//
//  ContentView.swift
//  Aula4
//
//  Created by Turma02-Backup on 11/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            RosaView()
                .tabItem {
                    Label("Rosa", systemImage: "paintbrush")
                }
            AzulView()
                .tabItem {
                    Label("Azul", systemImage: "paintbrush.pointed")
                }
            CinzaView()
                .tabItem {
                    Label("Cinza", systemImage: "paintpalette")
                }
            ListView()
                .tabItem {
                    Label("Lista", systemImage: "list.bullet")
                }
        }
        
    }
}

#Preview {
    ContentView()
}
