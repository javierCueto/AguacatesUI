//
//  ContentView.swift
//  AguacatesUI
//
//  Created by José Javier Cueto Mejía on 15/05/20.
//  Copyright © 2020 Pozolx. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 20){
                
                //MARK: - header
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(alignment: .top, spacing: 0){
                        HeaderView()
                    }
                }
                
                
                
                VStack(alignment: .center, spacing: 20){
                    //MARK: - footer
                    Text("All about avocados")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(8)
                    Text("Everything you wanted to know about avocados but were too afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.gray)
                    
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
