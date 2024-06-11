//
//  ContentView.swift
//  Aula3
//
//  Created by Turma02-Backup on 10/06/24.
//

import SwiftUI

struct ContentView: View {
    let headSpace: CGFloat = 40
    
    enum Category: String, CaseIterable {
        case baixo, norm, sobrepeso, obesidade
    }
    @State private var category = Category.norm
    
    @State private var peso: String = "0"
    @State private var altura: String = "0"
    
    var body: some View {
        
        ZStack {
            VStack {
                Text("Calculadora de IMC")
                    .font(.largeTitle)
                Spacer().frame(height: headSpace)
                TextField("Peso", text: $peso)
                    .bold()
                    .multilineTextAlignment(.center)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Spacer().frame(height: headSpace)
                TextField("Altura", text: $altura)
                    .bold()
                    .multilineTextAlignment(.center)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Spacer().frame(height: 30)
                
                Button("Calcular") {
                    var pesoFloat = Float(peso) ?? 0.0
                    var alturaFloat = Float(altura) ?? 0.0
                    
                    calcIMC(p: pesoFloat, a: alturaFloat)
                }
                .padding(10)
                .frame(width: 120)
                .background(.blue)
                .cornerRadius(5)
                .foregroundStyle(.white)
                Spacer()
                Text(chooseText(category: category))
                    .font(.largeTitle)
                    .foregroundStyle(BackgroundStyle())
                Spacer()
                Image("tabela-IMC")
                    .resizable()
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .frame(width: 450, height: 200)
            }
            .padding()
        }.background(chooseColor(category: category))
    }
    
    func calcIMC(p: Float, a: Float) {
        let calc = p / (a * a)
        
        if calc < 18.5 {
            category = .baixo
        } else if calc < 25 {
            category = .norm
        } else if calc < 30 {
            category = .sobrepeso
        } else {
            category = .obesidade
        }
    }
    
    func chooseColor(category: Category) -> Color {
        switch category {
        case .baixo: return Color("Baixo")
        case .norm: return Color("Normal")
        case .sobrepeso: return Color("Sobrepeso")
        case .obesidade: return Color("Obesidade")
        }
    }
    
    func chooseText(category: Category) -> String {
        switch category {
        case .baixo: return "Baixo"
        case .norm: return "Normal"
        case .sobrepeso: return "Sobrepeso"
        case .obesidade: return "Obesidade"
        }
    }
}

#Preview {
    ContentView()
}
