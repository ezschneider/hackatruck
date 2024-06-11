//
//  ContentView.swift
//  Aulas
//
//  Created by Turma02-Backup on 07/06/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    @State private var name: String = "Fulano"
    
    var body: some View {
        ZStack {
            //            TextField(title: "Bem vindo", )
            Image(.background)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: 0, maxWidth: .infinity)
                .edgesIgnoringSafeArea(.all)
                .opacity(0.2)
            VStack {
                Text("Bem vindo, \(name)")
                    .bold()
                    .font(.largeTitle)
                TextField("Enter your name", text: $name)
                    .bold()
                    .multilineTextAlignment(.center)
                Spacer()
                Image(.logo)
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                Image(.truck)
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                Spacer()
                Button("Entrar") {
                    showingAlert = true
                }
                .alert(isPresented:$showingAlert) {
                    Alert(
                        title: Text("ALERTA!"),
                        message: Text("Você irá iniciar o desafio da aula agora"),
                        dismissButton: .cancel(Text("Vamos lá!"))
                    )
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
