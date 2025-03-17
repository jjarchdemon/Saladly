//
//  ContentView.swift
//  Saladly
//
//  Created by Joseph on 27.07.23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var vm : IngredientViewModel
    @State var selectedTab : Int = 1
    
    var body: some View {
        
        TabView(selection: $selectedTab) {
            
            Text("One shot")
            .tabItem {
                Image(systemName: "door.left.hand.closed")
                Text("Pantry")
            }
            .tag(0)
            
            SaladMakerView()
            .tabItem {
                Image(systemName: "frying.pan.fill")
                Text("Make")
            }
            .tag(1)
            
            Text("Three shot")
            .tabItem {
                Image(systemName: "tray.2.fill")
                Text("Collection")
            }
            .tag(2)
            
        }.accentColor(.green)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(IngredientViewModel())
    }
}
