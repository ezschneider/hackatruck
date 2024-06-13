//
//  ContentView.swift
//  Aula6
//
//  Created by Turma02-Backup on 13/06/24.
//

import SwiftUI
import MapKit					

struct ContentView: View {
    @State private var showingSheet = false
    
    @State private var selectCountry : Location = arrCountries[0]
    @State private var position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: arrCountries[0].coordinate,
            span: MKCoordinateSpan(
                latitudeDelta: 1,
                longitudeDelta: 1
            )
        )
    )
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                Map(position: $position){
                    ForEach(arrCountries) { country in
                        Annotation(country.name, coordinate: country.coordinate) {
                            Image(systemName: "flag.circle.fill")
                                .resizable()
                                .foregroundStyle(.blue)
                                .frame(width: 44, height: 44)
                                .background(.white)
                                .clipShape(.circle)
                        }
                    }
                }
                    .ignoresSafeArea()
                VStack {
                    ZStack {
                        Rectangle()
                            .fill(.white)
                            .ignoresSafeArea()
                            .frame(width: .infinity, height: 100)
                            .opacity(0.8)
                        VStack {
                            Text("World map")
                                .font(.largeTitle)
                                .bold()
                            Text(selectCountry.name)
                        }
                    }
                    Spacer()
                    ScrollView(.horizontal) {
                        HStack(spacing: 60) {
                            ForEach(arrCountries) { country in
                                Button(
                                    action: {
                                        selectCountry = country
                                        position = MapCameraPosition.region(
                                            MKCoordinateRegion(
                                                center: country.coordinate,
                                                span: MKCoordinateSpan(
                                                    latitudeDelta: 1,
                                                    longitudeDelta: 1
                                                )
                                            )
                                        )
                                    },
                                    label: {
                                        AsyncImage(url: URL(string: country.flag)) { image in
                                            image
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                            
                                        } placeholder: {
                                            Color.gray
                                        }
                                        .frame(width: 50, height: 50)
                                    }
                                )
                            }
                        }.padding(30)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
