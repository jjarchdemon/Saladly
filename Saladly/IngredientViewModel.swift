//
//  IngredientViewModel.swift
//  Saladly
//
//  Created by Joseph on 27.07.23.
//

import Foundation

class IngredientViewModel: ObservableObject {
    @Published var ingredientsArray: [IngredientModel] = [
        IngredientModel(name: "Spinach", category: .greens),
        IngredientModel(name: "Rucola", category: .greens),
        IngredientModel(name: "Lettuce", isSelected: true, category: .greens),
        
        IngredientModel(name: "bell peppers", category: .veggies),
        IngredientModel(name: "grilled veggies", isPrep: true, category: .veggies),
        IngredientModel(name: "black beans", isPrep: true, isSelected: true, category: .veggies),
        IngredientModel(name: "chick peas", isPrep: true, category: .veggies),
        
        IngredientModel(name: "salmon", isPrep: true, category: .protein),
        IngredientModel(name: "grilled chicken", isPrep: true, category: .protein),
        IngredientModel(name: "boiled eggs", isPrep: true, category: .protein),
        IngredientModel(name: "mushroom", isPrep: true, category: .protein),
        
        IngredientModel(name: "olive oil", category: .oil),
        IngredientModel(name: "canola oil", category: .oil),
        IngredientModel(name: "peanut oil", isSelected: true, category: .oil),
        
        IngredientModel(name: "apple", category: .fruits),
        IngredientModel(name: "orange", isSelected: true, category: .fruits),
        IngredientModel(name: "grapes", category: .fruits),
        IngredientModel(name: "avocado", category: .fruits),
        
        IngredientModel(name: "sunflower seeds", category: .seedsAndNuts),
        IngredientModel(name: "sesame seeds", isSelected: true, category: .seedsAndNuts),
        IngredientModel(name: "pumpkin seeds", category: .seedsAndNuts),
        IngredientModel(name: "pecan seeds", category: .seedsAndNuts),
        
        IngredientModel(name: "fresh herbs", category: .seasoning),
        IngredientModel(name: "oregano", isSelected: true, category: .seasoning),
        IngredientModel(name: "pickled jalapeños", category: .seasoning),
        IngredientModel(name: "pickled onions", category: .seasoning),
        
        IngredientModel(name: "goat cheese", category: .fats),
        IngredientModel(name: "queso fresco", isSelected: true, category: .fats),
        IngredientModel(name: "parmesan", category: .fats),
        
        IngredientModel(name: "lemon juice", category: .acid),
        IngredientModel(name: "white wine", category: .acid),
        IngredientModel(name: "sherry", category: .acid)
    ]
    
 
    // No more stored filteredIngredientsArray
        
        init() {
            // No initialization needed for filteredIngredientsArray
        }
        
        
    var filteredIngredientsArray: [IngredientModel] {
            print("Filtering for category: \(currentCategory)")
            let filtered = ingredientsArray.filter { $0.category == currentCategory }
            print("Filtered array: \(filtered)")
            return filtered
        }
        
        @Published var currentCategory: IngredientModel.Category = .greens // Add this

    func selectIngredient(_ item: IngredientModel) {
            if let index = ingredientsArray.firstIndex(where: { $0.name == item.name }) {
                ingredientsArray[index].isSelected.toggle()
                print("Ingredient '\(item.name)' selected. ingredientsArray: \(ingredientsArray)")
            }
        }

    func addIngredient(name: String, category: IngredientModel.Category) {
            let newIngredient = IngredientModel(name: name, category: category)
            ingredientsArray.append(newIngredient)
            currentCategory = category
            print("Ingredient '\(name)' added to category '\(category)'. ingredientsArray: \(ingredientsArray)")
        }
        
    }
