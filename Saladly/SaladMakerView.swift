//
//  SaladMakerView.swift
//  Saladly
//
//  Created by Joseph on 27.07.23.
//

import SwiftUI

struct SaladMakerView: View {
    @EnvironmentObject var vm: IngredientViewModel
    @State private var isSheetShowing = false
    @State private var textFieldText = ""

    var body: some View {
        NavigationView {
            VStack {
                HeaderView(textFieldText: $textFieldText)
                
                ScrollView(.vertical) {
                    VStack(spacing: 20) {
                        ForEach(IngredientModel.Category.allCases, id: \.self) { category in
                            CategorySectionView(category: category)
                        }
                    }
                    .padding(.bottom, 50)
                }
            }
        }
    }
}

// MARK: - Header View (Salad Name + Prepare Button)
struct HeaderView: View {
    @Binding var textFieldText: String

    var body: some View {
        VStack(spacing: 0) {
            TextField("Salad Name...", text: $textFieldText)
                .multilineTextAlignment(.center)
                .font(.title2)
                .padding(.top)
                .bold()
            
            Text("🥗")
                .font(.system(size: 200))
            
            Button(action: {
                // Add functionality for preparing the salad
            }) {
                Text("\(Image(systemName: "frying.pan.fill")) Prepare")
                    .foregroundColor(.white)
                    .bold()
                    .padding()
                    .background(Color.brightGreen)
                    .cornerRadius(20)
                    .padding(.bottom)
            }
        }
        .accentColor(.brightGreen)
    }
}

// MARK: - Category Section View (Displays Ingredients for Each Category)
struct CategorySectionView: View {
    @EnvironmentObject var vm: IngredientViewModel
    let category: IngredientModel.Category

    var body: some View {
        VStack(alignment: .leading) {
            Text(category.rawValue.uppercased())
                .foregroundColor(.gray)
                .padding(.horizontal)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    NavigationLink(destination: CreateIngredientFormView(category: category)) {
                        CreateButtonView(category: category)
                    }

                    ForEach(vm.ingredientsArray.filter { $0.category == category }, id: \.self) { item in
                        IngredientView(vm: vm, item: item)
                            .onTapGesture {
                                vm.selectIngredient(item)
                            }
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}
//case .acid, .fats, .fruits, .greens, .oil, .protein, .seasoning, .seedsAndNuts, .veggies  :


struct SaladMakerView_Previews: PreviewProvider {
    static var previews: some View {
        SaladMakerView()
            .environmentObject(IngredientViewModel())
    }
}
