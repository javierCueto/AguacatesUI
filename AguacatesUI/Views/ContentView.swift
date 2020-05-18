//
//  ContentView.swift
//  AguacatesUI
//
//  Created by José Javier Cueto Mejía on 15/05/20.
//  Copyright © 2020 Pozolx. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var headers: [Header] = headersData
    var facts: [Fact] = factData
    
    var recipes: [Recipe] = recipesData
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 20){
                
                //MARK: - header
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(alignment: .top, spacing: 0){
                        ForEach(headers){ item in
                            HeaderView(header: item)
                            
                        }
                        
                    }
                }
                
                //MARK: - body
                Text("Dishes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                DishesView()
                    .frame(maxWidth: 640)
                
                
                //MARK: - avocados facts
                Text("Avocados Facts")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                
                
                //MARK: - header
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(alignment: .top, spacing: 60){
                        ForEach(facts){ item in
                            FactsView(fact: item)
                            // .padding(.leading,50)
                            
                        }
                        
                    }
                    .padding(.vertical)
                    .padding(.leading,60)
                    .padding(.trailing,20)
                }
                
                
                
                //MARK: - recipies
                Text("Recipies")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                
                
                //MARK: - header
               // ScrollView(.horizontal, showsIndicators: false){
                    VStack(alignment: .center, spacing: 60){
                        ForEach(recipes){ item in
                            RecipeCardView(recipe: item)
                            // .padding(.leading,50)
                            
                        }
                        .frame(maxWidth: 640)
                        .padding(.horizontal)
                        
                    }
 
               // }
                
                VStack(alignment: .center, spacing: 20){
                    //MARK: - footer
                    Text("All about avocados")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    Text("Everything you wanted to know about avocados but were too afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.gray)
                        .frame(minHeight: 60)
                    
                }
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom,85)
            }
        }
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

struct TitleModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .foregroundColor(Color("ColorGreenAdaptive"))
            .padding(8)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(headers: headersData, facts: factData, recipes: recipesData)
    }
}
