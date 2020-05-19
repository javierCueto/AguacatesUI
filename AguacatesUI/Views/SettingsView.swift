//
//  SettingsView.swift
//  AguacatesUI
//
//  Created by José Javier Cueto Mejía on 16/05/20.
//  Copyright © 2020 Pozolx. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        VStack {
            Text("Aguacates")
                .font(.system(.title, design: .serif))
                .fontWeight(.bold)
            .foregroundColor(Color("ColorGreenAdaptive"))
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
