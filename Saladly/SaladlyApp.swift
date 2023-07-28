//
//  SaladlyApp.swift
//  Saladly
//
//  Created by Joseph on 27.07.23.
//

import SwiftUI

@main
struct SaladlyApp: App {
    @StateObject var vm : IngredientViewModel = IngredientViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(vm)
        }
    }
}
