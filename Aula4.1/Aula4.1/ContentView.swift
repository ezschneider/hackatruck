//
//  ContentView.swift
//  Aula4.1
//
//  Created by Turma02-Backup on 11/06/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showingSheet = false
    
    @State private var name: String = "Fulano"
    @State private var surname: String = "da Silva"
    
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(
                    destination: Modo1(name: name, surname: surname)
                ) {
                    Text("Modo 1")
                }
                NavigationLink(
                    destination: Modo2(name: name)
                ) {
                    Text("Modo 2")
                }
                Button("Modo 3") {
                    showingSheet.toggle()
                }
                .sheet(isPresented: $showingSheet) {
                    Modo3(name: name, surname: surname)
                }
            }
        }
    }
}

struct Modo1: View {
    @State var name: String = ""
    @State var surname: String = ""
    
    var body: some View {
        VStack {
            Text("Modo 1").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Spacer()
            Text("Nome: \(name)\nSobrenome: \(surname)")
            Spacer()
        }
    }
}

struct Modo2: View {
    @State var name: String = ""
    
    var body: some View {
        VStack {
            Text("Modo 2").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Spacer()
            TextField("Nome", text: $name)
            Text("Bem-vindo, \(name)!")
            NavigationLink(
                destination: Modo2_1(name: name)
            ) {
                Text("Acessar Tela")
            }
            Spacer()
        }
    }
}

struct Modo2_1: View {
    @State var name: String = ""
    
    var body: some View {
        VStack {
            Text("Modo 2").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Spacer()
            Text("Volte,\n \(name)!!")
            Spacer()
        }
    }
}

struct Modo3: View {
    @State var name: String = ""
    @State var surname: String = ""
    
    var body: some View {
        VStack {
            Text("Sheet View").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Spacer()
            Text("Nome: \(name)\nSobrenome: \(surname)")
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
