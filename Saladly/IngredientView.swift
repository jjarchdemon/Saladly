//
//  IngredientView.swift
//  Saladly
//
//  Created by Joseph on 27.07.23.
//

import SwiftUI

struct IngredientView: View {
    @EnvironmentObject var vm : IngredientViewModel
    var item : IngredientModel
    var body: some View {
        VStack{
            Image(systemName: item.isSelected ? item.symbolNameFilled : item.symbolName)
                .font(.title)
                .padding()
                .background(item.color.opacity( item.isSelected ? 1.0 : 0.2))
                .clipShape(Circle())
                .foregroundColor(item.isSelected ? .white : item.color)
            Text("\(item.name)")
                .font(.caption)
                .fontWeight(item.isSelected ? .bold : .regular)
                .frame(maxWidth: 70)
                .foregroundColor(item.isSelected ? item.color : Color(uiColor: .systemGray2))
        }
        //.scaleEffect(item.isSelected ? 1.06 : 1.0)
        
    }
}

struct IngredientView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientView(
            item: IngredientModel(name: "Cheddar",isSelected: true, category: .acid)
        )
            .environmentObject(IngredientViewModel())
    }
}
