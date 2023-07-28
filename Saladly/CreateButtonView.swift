//
//  CreateButtonView.swift
//  Saladly
//
//  Created by Joseph on 27.07.23.
//

import SwiftUI

struct CreateButtonView: View {
    @State var category : IngredientModel.Category
    var body: some View {
        VStack{
            switch self.category {
            case .greens:
                Image(systemName: "plus.circle")
                    .font(.title)
                    .padding()
                    .foregroundColor(Color.greensColor.opacity(0.5))
                    .overlay(
                        Circle()
                            .stroke(
                                Color.greensColor.opacity(0.5),
                                style: StrokeStyle(
                                    lineWidth: 2,
                                    lineCap: .round,
                                    lineJoin: .miter,
                                    miterLimit: 0,
                                    dash: [6, 6],
                                    dashPhase: 0
                                )
                            )
                        )
                Text("New")
                    .font(.caption)
                    .foregroundColor(Color.greensColor)
            
            case .veggies:
                Image(systemName: "plus.circle")
                    .font(.title)
                    .padding()
                    .foregroundColor(Color.veggiesColor.opacity(0.5))
                    .overlay(
                        Circle()
                            .stroke(
                                Color.veggiesColor.opacity(0.5),
                                style: StrokeStyle(
                                    lineWidth: 2,
                                    lineCap: .round,
                                    lineJoin: .miter,
                                    miterLimit: 0,
                                    dash: [6, 6],
                                    dashPhase: 0
                                )
                            )
                        )
                Text("New")
                    .font(.caption)
                    .foregroundColor(Color.veggiesColor)
                
            case .protein:
                Image(systemName: "plus.circle")
                    .font(.title)
                    .padding()
                    .foregroundColor(Color.proteinColor.opacity(0.5))
                    .overlay(
                        Circle()
                            .stroke(
                                Color.proteinColor.opacity(0.5),
                                style: StrokeStyle(
                                    lineWidth: 2,
                                    lineCap: .round,
                                    lineJoin: .miter,
                                    miterLimit: 0,
                                    dash: [6, 6],
                                    dashPhase: 0
                                )
                            )
                        )
                Text("New")
                    .font(.caption)
                    .foregroundColor(Color.proteinColor)
                
            case .fats:
                Image(systemName: "plus.circle")
                    .font(.title)
                    .padding()
                    .foregroundColor(Color.fatsColor.opacity(0.5))
                    .overlay(
                        Circle()
                            .stroke(
                                Color.fatsColor.opacity(0.5),
                                style: StrokeStyle(
                                    lineWidth: 2,
                                    lineCap: .round,
                                    lineJoin: .miter,
                                    miterLimit: 0,
                                    dash: [6, 6],
                                    dashPhase: 0
                                )
                            )
                        )
                Text("New")
                    .font(.caption)
                    .foregroundColor(Color.fatsColor)
                
            case .oil:
                Image(systemName: "plus.circle")
                    .font(.title)
                    .padding()
                    .foregroundColor(Color.oilColor.opacity(0.5))
                    .overlay(
                        Circle()
                            .stroke(
                                Color.oilColor.opacity(0.5),
                                style: StrokeStyle(
                                    lineWidth: 2,
                                    lineCap: .round,
                                    lineJoin: .miter,
                                    miterLimit: 0,
                                    dash: [6, 6],
                                    dashPhase: 0
                                )
                            )
                        )
                Text("New")
                    .font(.caption)
                    .foregroundColor(Color.oilColor)
                
            case .seedsAndNuts:
                Image(systemName: "plus.circle")
                    .font(.title)
                    .padding()
                    .foregroundColor(Color.seedsColor.opacity(0.5))
                    .overlay(
                        Circle()
                            .stroke(
                                Color.seedsColor.opacity(0.5),
                                style: StrokeStyle(
                                    lineWidth: 2,
                                    lineCap: .round,
                                    lineJoin: .miter,
                                    miterLimit: 0,
                                    dash: [6, 6],
                                    dashPhase: 0
                                )
                            )
                        )
                Text("New")
                    .font(.caption)
                    .foregroundColor(Color.seedsColor)
                
            case .fruits:
                Image(systemName: "plus.circle")
                    .font(.title)
                    .padding()
                    .foregroundColor(Color.fruitsColor.opacity(0.5))
                    .overlay(
                        Circle()
                            .stroke(
                                Color.fruitsColor.opacity(0.5),
                                style: StrokeStyle(
                                    lineWidth: 2,
                                    lineCap: .round,
                                    lineJoin: .miter,
                                    miterLimit: 0,
                                    dash: [6, 6],
                                    dashPhase: 0
                                )
                            )
                        )
                Text("New")
                    .font(.caption)
                    .foregroundColor(Color.fruitsColor)
                
            case .seasoning:
                Image(systemName: "plus.circle")
                    .font(.title)
                    .padding()
                    .foregroundColor(Color.seasoningColor.opacity(0.5))
                    .overlay(
                        Circle()
                            .stroke(
                                Color.seasoningColor.opacity(0.5),
                                style: StrokeStyle(
                                    lineWidth: 2,
                                    lineCap: .round,
                                    lineJoin: .miter,
                                    miterLimit: 0,
                                    dash: [6, 6],
                                    dashPhase: 0
                                )
                            )
                        )
                Text("New")
                    .font(.caption)
                    .foregroundColor(Color.seasoningColor)
               
            case .acid:
                Image(systemName: "plus.circle")
                    .font(.title)
                    .padding()
                    .foregroundColor(Color.acidColor.opacity(0.5))
                    .overlay(
                        Circle()
                            .stroke(
                                Color.acidColor.opacity(0.5),
                                style: StrokeStyle(
                                    lineWidth: 2,
                                    lineCap: .round,
                                    lineJoin: .miter,
                                    miterLimit: 0,
                                    dash: [6, 6],
                                    dashPhase: 0
                                )
                            )
                        )
                Text("New")
                    .font(.caption)
                    .foregroundColor(Color.acidColor)
                
            }
                
                
                
                
            
            
        }
        
        
        
    }
}

struct CreateButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CreateButtonView(category: .greens)
    }
}


