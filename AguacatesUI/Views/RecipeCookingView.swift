//
//  RecipeCookingView.swift
//  AguacatesUI
//
//  Created by José Javier Cueto Mejía on 18/05/20.
//  Copyright © 2020 Pozolx. All rights reserved.
//

import SwiftUI

struct RecipeCookingView: View {
    var recipe: Recipe
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            HStack(alignment: .center, spacing: 2){
                Image(systemName: "person.2")
                Text("Serves: \(recipe.serves)")
            }
            HStack(alignment: .center, spacing: 2){
                Image(systemName: "clock")
                Text("Prep: \(recipe.preparation)")
            }
            HStack(alignment: .center, spacing: 2){
                Image(systemName: "flame")
                Text("Coocking: \(recipe.cooking)")
            }
        }.font(.footnote)
            .foregroundColor(Color.gray)
    }
}

struct RecipeCookingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCookingView(recipe: recipesData[0])
            .previewLayout(.sizeThatFits)
    }
}
