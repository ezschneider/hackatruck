//
//  ContentView.swift
//  Aula4
//
//  Created by Turma02-Backup on 11/06/24.
//

import SwiftUI

struct AzulView: View {
    var body: some View {
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.top)
            Circle()
                .frame(width: 300)
            Image(systemName: "paintbrush.pointed")
                .font(.system(size: 200))
                .foregroundColor(.blue)
        }
    }
}

#Preview {
    AzulView()
}
