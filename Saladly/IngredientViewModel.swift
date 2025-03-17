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
    
    @Published var filteredIngredientsArray: [IngredientModel] = []
    
    init() {
        // Initialize the filtered array to match the full list initially.
        filteredIngredientsArray = ingredientsArray
    }
    
    func filterIngredients(by category: IngredientModel.Category) {
        filteredIngredientsArray = ingredientsArray.filter { $0.category == category }
    }
    
    func selectIngredient(_ item: IngredientModel) {
        if let index = filteredIngredientsArray.firstIndex(where: { $0.name == item.name }) {
            filteredIngredientsArray[index].isSelected.toggle()
        }
    }
    
    func addIngredient(for category: IngredientModel.Category) {
        // Replace "New Ingredient" with an appropriate default name if needed.
        let newIngredient = IngredientModel(name: "New Ingredient", category: category)
        filteredIngredientsArray.append(newIngredient)
    }
    
    func resetFilteredIngredients() {
        filteredIngredientsArray = ingredientsArray
    }
}
