//
//  FactModel.swift
//  AguacatesUI
//
//  Created by José Javier Cueto Mejía on 18/05/20.
//  Copyright © 2020 Pozolx. All rights reserved.
//

import Foundation

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
