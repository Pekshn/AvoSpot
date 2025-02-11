//
//  Ripening.swift
//  AvoSpot
//
//  Created by Petar  on 11.2.25..
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
