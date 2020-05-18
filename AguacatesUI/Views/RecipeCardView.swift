//
//  RecipeCardView.swift
//  AguacatesUI
//
//  Created by José Javier Cueto Mejía on 18/05/20.
//  Copyright © 2020 Pozolx. All rights reserved.
//

import SwiftUI

struct RecipeCardView: View {
    var recipe: Recipe
    
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    
    @State private var showModal : Bool = false
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "bookmark")
                                .font(Font.title.weight(.light))
                                .foregroundColor(.white)
                                .imageScale(.small)
                                .shadow(color: Color("ColorBlackTransparentLight"), radius: 2, x: 0, y: 0)
                            Spacer()
                        }.padding()
                    }
            )
            VStack(alignment: .leading, spacing: 12) {
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .lineLimit(1)
                
                //title
                //headline
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .italic()
                    .foregroundColor(Color.gray)
                    .lineLimit(1)
                //rates
                RecipeRatingView(rating: recipe.rating)
                //coocking
                RecipeCookingView(recipe: recipe)
               
            }.padding()
                .padding(.bottom, 12)
        }.background(Color.white)
            .cornerRadius(12)
            .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
            .onTapGesture {
                self.hapticImpact.impactOccurred()
                self.showModal = true
        }
        .sheet(isPresented: self.$showModal) {
            RecipeDetailView(recipe: self.recipe)
        }
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipesData[0])
            .previewLayout(.sizeThatFits)
    }
}
