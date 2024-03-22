//
//  OnBoardingView.swift
//  Fructus
//
//  Created by why_me on 22.03.24.
//

import SwiftUI

struct OnBoardingView: View {
    // MARK: - PROPERTIES
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    var body: some View {
        TabView{
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            }
        } //: Tab
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - PREVIEW
struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView(fruits: fruitsData)
            .previewDevice("Iphone 14 Pro")
    }
}
