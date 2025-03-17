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
    @Environment(\.presentationMode) var presentationMode // Add this

    var body: some View {
        ZStack{
            category.color.edgesIgnoringSafeArea(.all) // Use category.color

            VStack {
                Text("Create ingredient")
                    .font(.title.bold())
                    .foregroundColor(Color(uiColor: .systemBackground))
                TextField("Name...", text: $textFieldName)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color(uiColor: .systemGray6))
                    .cornerRadius(20)
                    .padding(.horizontal)
                Button {
                    vm.addIngredient(name: textFieldName, category: category) // Pass the name
                    presentationMode.wrappedValue.dismiss() // Dismiss the view
                    
                } label: {
                    Text("Create")
                        .font(.title3)
                        .bold()
                        .foregroundColor(Color(uiColor: .systemBackground))
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(category.color) // Use category.color
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
