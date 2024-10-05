//
//  ContentView.swift
//  SwiftUIFundamentals_BuildingListAndNavigation
//
//  Created by Juan Pablo Lasprilla Correa on 4/10/24.
//

import SwiftUI

struct ContentView: View {
    
    let villages = [
        Village(name: "Rain Village", photo: "rainVillage", size: 25),
        Village(name: "Sand Village", photo: "sandVillage", size: 20),
        Village(name: "Leafe Village", photo: "leafeVillage", size: 50),
    ]
    
    var body: some View {
        NavigationStack {
            List(villages) { village in
                NavigationLink(value: village) {
                    VillageCellView(village: village)
                }
                
            }.navigationTitle("Villages")
                .navigationDestination(for: Village.self) { village in
                    Text(village.name)
                }
        }
    }
}

#Preview {
    ContentView()
}

struct VillageCellView: View {
    
    let village: Village
    
    var body: some View {
        HStack(alignment: .center){
            Image(village.photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                .frame(width: 150)
            VStack(alignment: .leading) {
                Text(village.name)
                Text("\(village.size) Km2")
            }
        }
    }
}
