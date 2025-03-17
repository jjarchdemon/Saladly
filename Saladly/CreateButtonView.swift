//
//  CreateButtonView.swift
//  Saladly
//
//  Created by Joseph on 27.07.23.
//

import SwiftUI

struct CreateButtonView: View {
    @State var category: IngredientModel.Category

    var body: some View {
        VStack {
            createButton(for: category)
        }
    }

    private func createButton(for category: IngredientModel.Category) -> some View {
        let color = Color.categoryColors[category] ?? .gray
        
        return VStack {
            Image(systemName: "plus.circle")
                .font(.title)
                .padding()
                .foregroundColor(color.opacity(0.5))
                .overlay(
                    Circle()
                        .stroke(
                            color.opacity(0.5),
                            style: StrokeStyle(
                                lineWidth: 2,
                                lineCap: .round,
                                lineJoin: .miter,
                                dash: [6, 6]
                            )
                        )
                )
            Text("New")
                .font(.caption)
                .foregroundColor(color)
        }
    }
}

struct CreateButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CreateButtonView(category: .greens)
    }
}
