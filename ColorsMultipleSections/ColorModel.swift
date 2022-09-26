//
//  ColorModel.swift
//  ColorsMultipleSections
//
//  Created by Esraa Khaled   on 29/08/2022.
//

import UIKit

class ColorModel: Hashable{
    var id = UUID()
    var color: UIColor?
    init(color: UIColor? = nil){
        self.color = color
    }
    // 1
    func hash(into hasher: inout Hasher) {
      // 2
      hasher.combine(id)
    }
    // 3
    static func == (lhs: ColorModel, rhs: ColorModel) -> Bool {
      lhs.id == rhs.id
    }
}

















