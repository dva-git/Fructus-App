//
//  FruitNutrietsView.swift
//  Fructus
//
//  Created by why_me on 23.03.24.
//

import SwiftUI

struct FruitNutrietsView: View {
    // MARK: - PROPERTIES
    
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    // MARK: - BODY
    
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g"){
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                    
                }
            }
            
        } //: Groupbox
    }
}

struct FruitNutrietsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrietsView(fruit:fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
