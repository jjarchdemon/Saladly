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
        VStack{
            //top half
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
            //bottom half
            ScrollView(.vertical) {
                VStack(alignment: .leading){
                    ForEach(IngredientModel.Category.allCases, id:\.self) { category in Text(category.rawValue.uppercased())
                            .foregroundColor(.gray)
                    }
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
