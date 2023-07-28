//
//  IngredientModel.swift
//  Saladly
//
//  Created by Joseph on 27.07.23.
//

import Foundation
import SwiftUI

extension Color {
   // static let brightGreen = Color(red: 35 / 255, green: 230 / 255, blue: 150 / 255)
    static let brightGreen = Color(red: 155 / 255, green: 207 / 255, blue: 123 / 255)
    static let brightBlue = Color(red: 20 / 255, green: 220 / 255, blue: 240 / 255)
    static let greensColor = Color(red: 185 / 255, green: 206 / 255, blue: 183 / 255)
    static let veggiesColor = Color(red: 156 / 255, green: 195 / 255, blue: 111 / 255)
    static let proteinColor = Color(red: 138 / 255, green: 173 / 255, blue: 98 / 255)
    static let fatsColor = Color(red: 84 / 255, green: 120 / 255, blue: 96 / 255)
    static let oilColor = Color(red: 156 / 255, green: 195 / 255, blue: 111 / 255)
    static let seedsColor = Color(red: 138 / 255, green: 173 / 255, blue: 98 / 255)
    static let fruitsColor = Color(red: 84 / 255, green: 120 / 255, blue: 96 / 255)
    static let seasoningColor = Color(red: 194 / 255, green: 216 / 255, blue: 170 / 255)
    static let acidColor = Color(red: 156 / 255, green: 195 / 255, blue: 111 / 255)
}
//Model
struct IngredientModel : Hashable{
    enum Category : String, CaseIterable {
        case greens = "Greens"
        case protein = "Protein"
        case oil = "Oil"
    }
    
    var name : String
    var isPrep : Bool = false
    var isSelected : Bool = false
    var category : Category
    
    var color : Color {
        switch self.category {
        case .greens:
            return Color.greensColor
        case .protein:
            return Color.proteinColor
        case .oil:
            return Color.oilColor
        }
    }
    var symbolName : String {
        switch self.category {
        case .greens :
            return "volleyball"
        default :
            return "cricket.ball"
        }
    }
    var symbolNameFilled : String {
        switch self.category {
        case .greens :
            return "volleyball.fill"
        default :
            return "cricket.ball.fill"
        }
    }
    
}
