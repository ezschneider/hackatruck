//
//  ContentView.swift
//  Aula4
//
//  Created by Turma02-Backup on 11/06/24.
//

import SwiftUI

struct CinzaView: View {
    var body: some View {
        ZStack {
            Color.gray
                .edgesIgnoringSafeArea(.top)
            Circle()
                .frame(width: 300)
            Image(systemName: "paintpalette")
                .font(.system(size: 200))
                .foregroundColor(.gray)
        }
    }
}

#Preview {
    CinzaView()
}
