//
//  IngredientModel.swift
//  Saladly
//
//  Created by Joseph on 27.07.23.
//

import Foundation
import SwiftUI

// MARK: - Color Extension
extension Color {
    static let categoryColors: [IngredientModel.Category: Color] = [
        .greens: Color(red: 185 / 255, green: 206 / 255, blue: 183 / 255),
        .veggies: Color(red: 156 / 255, green: 195 / 255, blue: 111 / 255),
        .protein: Color(red: 138 / 255, green: 173 / 255, blue: 98 / 255),
        .fats: Color(red: 84 / 255, green: 120 / 255, blue: 96 / 255),
        .oil: Color(red: 156 / 255, green: 195 / 255, blue: 111 / 255),
        .seedsAndNuts: Color(red: 138 / 255, green: 173 / 255, blue: 98 / 255),
        .fruits: Color(red: 84 / 255, green: 120 / 255, blue: 96 / 255),
        .seasoning: Color(red: 194 / 255, green: 216 / 255, blue: 170 / 255),
        .acid: Color(red: 156 / 255, green: 195 / 255, blue: 111 / 255)
    ]
}

// MARK: - Ingredient Model
struct IngredientModel: Hashable {
    enum Category: String, CaseIterable, Hashable {
        case greens = "Greens"
        case veggies = "Veggies"
        case protein = "Protein"
        case fats = "Fats"
        case oil = "Oil"
        case seedsAndNuts = "Seeds & Nuts"
        case fruits = "Fruits"
        case seasoning = "Seasoning"
        case acid = "Acid"
        
        var color: Color { // Computed property for color
            Color.categoryColors[self] ?? .gray
        }
    }

    var name: String
    var isPrep: Bool = false
    var isSelected: Bool = false
    var category: Category

    var color: Color {  //keep this for now but its redundant
        Color.categoryColors[category] ?? .gray
    }

    var symbolName: String {
        category == .acid ? "volleyball" : "cricket.ball"
    }

    var symbolNameFilled: String {
        "\(symbolName).fill"
    }
}
