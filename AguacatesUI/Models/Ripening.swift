//
//  Ripening.swift
//  AguacatesUI
//
//  Created by José Javier Cueto Mejía on 19/05/20.
//  Copyright © 2020 Pozolx. All rights reserved.
//

import Foundation

struct Ripening: Identifiable {
  var id = UUID()
  var image: String
  var stage: String
  var title: String
  var description: String
  var ripeness: String
  var instruction: String
}
