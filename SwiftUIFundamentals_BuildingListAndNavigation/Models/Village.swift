//
//  Village.swift
//  SwiftUIFundamentals_BuildingListAndNavigation
//
//  Created by Juan Pablo Lasprilla Correa on 4/10/24.
//

import Foundation

struct Village: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let photo: String
    let size: Double
}
