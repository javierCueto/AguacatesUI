//
//  SettingsView.swift
//  AguacatesUI
//
//  Created by José Javier Cueto Mejía on 16/05/20.
//  Copyright © 2020 Pozolx. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    @State private var enableNotification: Bool = true
    @State private var backgroundRefresh: Bool = false
    var body: some View {
        VStack(spacing: 0) {
            
            //MARK: - header
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width:100, height: 100)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                
                Text("Aguacates")
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenAdaptive"))
            }.padding()
            
            //MARK: - form
            Form{
                
                //MARK: - section 1
                Section(header: Text("General settings")) {
                    Toggle(isOn: $enableNotification){
                        Text("Enable Notifications")
                    }
                    
                    Toggle(isOn: $backgroundRefresh){
                        Text("Background refresh")
                    }
                }
                
                //MARK: - section 2
                Section(header: Text("Application")) {
                    if enableNotification {
                        HStack(){
                            Text("Product").foregroundColor(.gray)
                            Spacer()
                            Text("Avocados recipies")
                        }
                        HStack(){
                            Text("Compatibility").foregroundColor(.gray)
                            Spacer()
                            Text("iPhone & iPad")
                        }
                        HStack(){
                            Text("Developer").foregroundColor(.gray)
                            Spacer()
                            Text("John / Jane")
                        }
                        HStack(){
                            Text("Designer").foregroundColor(.gray)
                            Spacer()
                            Text("Javier Cueto")
                        }
                        HStack(){
                            Text("Website").foregroundColor(.gray)
                            Spacer()
                            Text("javiercueto.com")
                        }
                        HStack(){
                            Text("Version").foregroundColor(.gray)
                            Spacer()
                            Text("1.0.0")
                        }
                    } else {
                        HStack(){
                            Text("Personal message").foregroundColor(.gray)
                            Spacer()
                            Text("Happy coding 🥳")
                        }
                    }
                    
                }
            }
        }.frame(maxWidth: 640)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
