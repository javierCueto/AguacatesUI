//
//  AppView.swift
//  AguacatesUI
//
//  Created by José Javier Cueto Mejía on 16/05/20.
//  Copyright © 2020 Pozolx. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView{
            AvocadosView()
                .tabItem({
                    Image("tabicon-branch")
                    Text("Avocados")
                })
            
            ContentView()
                .tabItem({
                    Image("tabicon-book")
                    Text("Recipes")
                })
            RipenigStagesView()
                .tabItem({
                    Image("tabicon-avocado")
                    Text("Ripenig")
                })
            
            SettingsView()
                .tabItem({
                    Image("tabicon-settings")
                    Text("Settings")
                })
        }
        .edgesIgnoringSafeArea(.top)
        .accentColor(Color.primary)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
