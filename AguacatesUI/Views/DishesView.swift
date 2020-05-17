//
//  DishesView.swift
//  AguacatesUI
//
//  Created by José Javier Cueto Mejía on 17/05/20.
//  Copyright © 2020 Pozolx. All rights reserved.
//

import SwiftUI

struct DishesView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 4){
            VStack(alignment:.leading, spacing: 4) {
                ImageDishes(left: true, icon: "icon-toasts", text: "Toasts")
                Divider()
                ImageDishes(left: true, icon: "icon-tacos", text: "Tacos")
                Divider()
                ImageDishes(left: true, icon: "icon-salads", text: "Salads")
                Divider()
                ImageDishes(left: true, icon: "icon-halfavo", text: "Spreads")
            }
            
            VStack(alignment:.center, spacing: 16) {
                HStack {
                    Divider()
                }
                Image(systemName: "heart.circle")
                    .imageScale(.large)
                    .font(Font.title.weight(.ultraLight))
                HStack {
                    Divider()
                }
            }
            VStack(alignment:.trailing, spacing: 4) {
                ImageDishes(left: false, icon: "icon-guacamole", text: "Guacamole")
                Divider()
                ImageDishes(left: false, icon: "icon-sandwiches", text: "Sandwich")
                Divider()
                ImageDishes(left: false, icon: "icon-soup", text: "Soup")
                Divider()
                ImageDishes(left: false, icon: "icon-smoothies", text: "Smoothie")
            }
            
        }
        .font(.system(.callout, design: .serif))
        .foregroundColor(.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}



struct ImageDishes: View {
    var left: Bool
    var icon: String
    var text: String
    var body: some View {
        HStack(){
            if left {
                Image(icon)
                    .resizable()
                    .modifier(IconModifier())
            }else{
                Text(text)
            }
            
            
            Spacer()
            
            if left{
                Text(text)
                
            }else{
                Image(icon)
                    .resizable()
                    .modifier(IconModifier())
            }
            
        }
    }
}

struct IconModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .frame(width:42, height: 42, alignment: .center)
    }
}



struct DishesView_Previews: PreviewProvider {
    static var previews: some View {
        DishesView()
            .previewLayout(.fixed(width: 414, height: 280))
    }
}
