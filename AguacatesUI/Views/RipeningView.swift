//
//  RipenignView.swift
//  AguacatesUI
//
//  Created by José Javier Cueto Mejía on 19/05/20.
//  Copyright © 2020 Pozolx. All rights reserved.
//

import SwiftUI

struct RipeningView: View {
     var  ripening: Ripening
    @State private var slideInAnimation: Bool = false
    var body: some View {
        VStack {
            Image(ripening.image)
                .resizable()
                .frame(width:100, height: 100)
                .clipShape(Circle())
                .background(
                    Circle()
                        .fill(Color("ColorGreenLight"))
                        .frame(width: 110, height: 110)
            )
                .background(
                    Circle()
                        .fill(Color("ColorAppearanceAdaptive"))
                        .frame(width: 120, height: 120)
            )
            
                .zIndex(1)
                .animation(Animation.easeInOut(duration: 1))
                .offset(y: slideInAnimation ? 55 : -55)
            
            
            VStack(spacing: 10){
                //stage
                VStack(spacing: 0){
                    Text(ripening.stage)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                    Text("Stage")
                        .font(.system(.body, design: .serif))
                        .fontWeight(.heavy)
                }.foregroundColor(Color("ColorGreenMedium"))
                    .padding(.top, 65)
                    .frame(width: 180)
                //title
                Text(ripening.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .padding(.vertical, 12)
                    .padding(.horizontal,0)
                    .frame(width:220)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color.white, Color("ColorGreenLight")]), startPoint: .top, endPoint: .bottom))
                            .shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0, y: 6)
                )
                
                Spacer()
                //description
                Text(ripening.description)
                    .foregroundColor(Color("ColorGreenDark"))
                    .fontWeight(.bold)
                    .lineLimit(nil)
                Spacer()
                //ripeness
                Text(ripening.ripeness)
                    .foregroundColor(Color.white)
                    .font(.system(.callout, design: .serif))
                    .fontWeight(.bold)
                    .shadow(radius: 3)
                    .padding(.vertical)
                    .padding(.horizontal, 0)
                    .frame(width: 185)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenDark")]), startPoint: .top, endPoint: .bottom))
                            .shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0, y: 6)
                )
                
                
                
                //instrucction
                Text(ripening.instruction)
                    .font(.footnote)
                    .foregroundColor(Color("ColorGreenLight"))
                    .fontWeight(.bold)
                    .lineLimit(3)
                    .frame(width: 160)
                
                Spacer()
                
                
            }.multilineTextAlignment(.center)
                .padding(.horizontal)
                .frame(width: 250, height: 485, alignment: .center)
                .background(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenLight"),Color("ColorGreenMedium")]), startPoint: .top, endPoint: .bottom))
                .cornerRadius(20)
            
        }.edgesIgnoringSafeArea(.all)
            .onAppear(perform: {
                self.slideInAnimation.toggle()
            }
                
        )
        
    }
}

struct RipenignView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningView(ripening: ripeningData[1])
    }
}
