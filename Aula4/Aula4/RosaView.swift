//
//  ContentView.swift
//  Aula4
//
//  Created by Turma02-Backup on 11/06/24.
//

import SwiftUI

struct RosaView: View {
    var body: some View {
        ZStack{
            Color.pink
                .edgesIgnoringSafeArea(.top)
            Circle()
                .frame(width: 300)
            Image(systemName: "paintbrush")
                .font(.system(size: 200))
                .foregroundColor(.pink)
        }
    }
}

#Preview {
    RosaView()
}
