//
//  VillageDetailScreen.swift
//  SwiftUIFundamentals_BuildingListAndNavigation
//
//  Created by Juan Pablo Lasprilla Correa on 5/10/24.
//

import SwiftUI

struct VillageDetailScreen: View {
    
    let village: Village
    
    var body: some View {
        VStack {
            Image(village.photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(village.name)
                .font(.title)
            Text("\(village.size) Km2")
            Spacer()
        }.navigationTitle(village.name)
    }
}

#Preview {
    NavigationStack {
        VillageDetailScreen(village: Village(name: "Rain Village", photo: "rainVillage", size: 25))
    }
    
}
