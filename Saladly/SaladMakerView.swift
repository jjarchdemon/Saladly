//
//  SaladMakerView.swift
//  Saladly
//
//  Created by Joseph on 27.07.23.
//

import SwiftUI

struct SaladMakerView: View {
    @EnvironmentObject var vm : IngredientViewModel
    @State var isSheetShowing = false
    @State var textFieldText = ""
    var body: some View {
        
        NavigationView {
            VStack{
                VStack(spacing: 0){
                    TextField("Salad Name...", text: $textFieldText)
                        .multilineTextAlignment(.center)
                        .font(.title2)
                        .padding(.top)
                        .bold()
                    
                    Text("🥗")
                        .font(.system(size: 200))
                    
                    Button {
                        //
                    } label: {
                        Text("\(Image(systemName: "frying.pan.fill")) Prepare")
                            .foregroundColor(.white)
                            .bold()
                            .padding()
                            .background(Color.brightGreen)
                            .cornerRadius(20)
                            .padding(.bottom)
                    }
                    
                }.accentColor(.brightGreen)
                
                ScrollView(.vertical) {
                    VStack(spacing: 20){
                        ForEach(IngredientModel.Category.allCases, id: \.self) { category in
                            VStack(alignment: .leading){
                                Text(category.rawValue.uppercased())
                                    .foregroundColor(.gray)
                                    .padding(.horizontal)
                                    .onAppear{
                                        vm.filterIngredients(category: category)
                                    }
                                
                                ScrollView(.horizontal, showsIndicators: false){
                                     HStack {
                                         NavigationLink {
                                             CreateIngredientFormView(category: category)
                                         } label: {
                                             CreateButtonView(category: category)
                                         }
                                         
                                         
                                         ForEach(vm.filteredIngredientsArray, id:\.self) { item in
                                             if item.category == category {
                                                 IngredientView(vm: _vm, item: item)
                                                     .onAppear{
                                                         vm.resetFilterIngredients()
                                                     }
//                                                     .onTapGesture {
//                                                         print(item.name)
//                                                         vm.selectFunction(item: item) //is not working. still printing false always
//                                                         print(item.isSelected)
//                                                     }
                                                     
                                             }
                                        }
                                    }
                                     .padding(.horizontal)
                                }
                            }
                        }
                    }.padding(.bottom, 50)
                }
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
