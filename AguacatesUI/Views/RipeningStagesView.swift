//
//  RipenigStagesView.swift
//  AguacatesUI
//
//  Created by José Javier Cueto Mejía on 16/05/20.
//  Copyright © 2020 Pozolx. All rights reserved.
//

import SwiftUI

struct RipeningStagesView: View {
    var ripenings: [Ripening] = ripeningData
    var body: some View {
        ScrollView(.horizontal ,showsIndicators: false){
            VStack {
                Spacer()
                HStack(alignment: .center, spacing: 25){
                    ForEach(ripenings){ item in
                        RipeningView(ripening: item)
                    }  
                }
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView(ripenings: ripeningData)
    }
}
