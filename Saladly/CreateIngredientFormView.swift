//
//  CreateIngredientFormView.swift
//  Saladly
//
//  Created by Joseph on 27.07.23.
//

import SwiftUI

struct CreateIngredientFormView: View {
    
    @EnvironmentObject var vm : IngredientViewModel
    var category : IngredientModel.Category
    @State var textFieldName = ""
    
    var body: some View {
        ZStack{
            switch category {
            case .greens:
                Color.greensColor.edgesIgnoringSafeArea(.all)
            case .veggies:
                Color.veggiesColor.edgesIgnoringSafeArea(.all)
            case .protein:
                Color.proteinColor.edgesIgnoringSafeArea(.all)
            case .fats:
                Color.fatsColor.edgesIgnoringSafeArea(.all)
            case .oil:
                Color.oilColor.edgesIgnoringSafeArea(.all)
            case .seedsAndNuts:
                Color.seedsColor.edgesIgnoringSafeArea(.all)
            case .fruits:
                Color.fruitsColor.edgesIgnoringSafeArea(.all)
            case .seasoning:
                Color.seasoningColor.edgesIgnoringSafeArea(.all)
            case .acid:
                Color.acidColor.edgesIgnoringSafeArea(.all)
            }
            VStack {
                Text("Create ingredient")
                    .font(.title.bold())
                TextField("Name...", text: $textFieldName)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color(uiColor: .systemGray6))
                    .cornerRadius(20)
                    .padding(.horizontal)
                Button {
                    vm.addIngredient(category: category)
                    
                    //
                } label: {
                    Text("Save")
                        .font(.title3)
                        .bold()
                        .foregroundColor(Color(uiColor: .systemBackground))
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.green) //change as category
                        .cornerRadius(20)
                        .padding(.horizontal)
                }

            }
        }
        
        
    }
}

struct CreateIngredientFormView_Previews: PreviewProvider {
    static var previews: some View {
        CreateIngredientFormView(category: .fats)
            .environmentObject(IngredientViewModel())
    }
}
