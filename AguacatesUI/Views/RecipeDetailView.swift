//
//  RecipeDetailView.swift
//  AguacatesUI
//
//  Created by José Javier Cueto Mejía on 18/05/20.
//  Copyright © 2020 Pozolx. All rights reserved.
//

import SwiftUI

struct RecipeDetailView: View {
    var recipe: Recipe
    
    @State private var pulsate: Bool = false
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            VStack(alignment: .center, spacing: 0){
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                    .overlay(
                        HStack {
                            Spacer()
                            VStack {
                                Button(action: {
                                    print("here")
                                    self.presentationMode.wrappedValue.dismiss()
                                }, label: {
                                    Image(systemName: "chevron.down.circle.fill")
                                        .font(.title)
                                        .foregroundColor(.white)
                                        .shadow(radius: 4)
                                        .opacity(self.pulsate ? 1 : 0.6)
                                        .scaleEffect(self.pulsate ? 1.2: 0.8, anchor: .center)
                                        .animation(Animation.easeOut(duration: 1.5).repeatForever(autoreverses: true))
                                })
                                Spacer()
                            }.padding()
                    })
                
                Group{
                    //title
                    Text(recipe.title)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(.top, 10)
                    
                    //rating
                    RecipeRatingView(rating: recipe.rating)
                    //cooking
                    RecipeCookingView(recipe: recipe)
                    //ingredients
                    
                    Text("Ingredients")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    VStack(alignment: .leading, spacing: 5) {
                        ForEach(recipe.ingredients, id: \.self){ item in
                            
                            
                            VStack(alignment: .leading, spacing: 5) {
                                Text(item)
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                                Divider()
                            }
                        }
                        
                    }
                    //instruction
                    
                    Text("Ingredients")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    ForEach(recipe.instructions, id: \.self){ item in
                        
                        
                        VStack(alignment: .center, spacing: 5) {
                            Image(systemName: "chevron.down.circle")
                                .resizable()
                                .frame(width: 42, height: 42, alignment: .center)
                                .imageScale(.large)
                                .font(Font.title.weight(.ultraLight))
                                .foregroundColor(Color("ColorGreenAdaptive"))
                            Text(item)
                                .font(.system(.body, design: .serif))
                                .multilineTextAlignment(.leading)
                                .lineLimit(nil)
                                .frame(minHeight: 100)
                        }
                    }
                    
                }.padding(.horizontal, 24)
                    .padding(.vertical, 12)
                
                
            }
        }
        .edgesIgnoringSafeArea(.all)
        .onAppear(){
            self.pulsate.toggle()
        }
        
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: recipesData[0])
    }
}
