//
//  ContentView.swift
//  Aula4
//
//  Created by Turma02-Backup on 11/06/24.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView{
            List {
                HStack {
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintbrush")
                }
                HStack {
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintbrush.pointed")
                }
                HStack {
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintpalette")
                }
            }
            .navigationTitle("List")
        }
    }
}

#Preview {
    ListView()
}
