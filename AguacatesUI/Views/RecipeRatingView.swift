//
//  RecipeRatingView.swift
//  AguacatesUI
//
//  Created by José Javier Cueto Mejía on 18/05/20.
//  Copyright © 2020 Pozolx. All rights reserved.
//

import SwiftUI

struct RecipeRatingView: View {
    var rating: Int
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            ForEach(1...rating , id: \.self) { _ in
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct RecipeRatingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRatingView(rating: 4)
        .previewLayout(.sizeThatFits)
    }
}
