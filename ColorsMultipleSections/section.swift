//
//  section.swift
//  ColorsMultipleSections
//
//  Created by Esraa Khaled   on 29/08/2022.
//
import UIKit
// 1
class Section: Hashable {
    var id = UUID()
    // 2
    
    var colorrs: [ColorModel]
    
    init( colorrs: [ColorModel]) {
        
        self.colorrs = colorrs
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (lhs: Section, rhs: Section) -> Bool {
        lhs.id == rhs.id
    }
}

extension Section {
    static var allSections: [Section] = [
        Section(colorrs: [
            ColorModel( color: UIColor.red),
            ColorModel( color: UIColor.red),
            ColorModel( color: UIColor.red),
            ColorModel( color: UIColor.red),
            ColorModel( color: UIColor.red),
            ColorModel( color: UIColor.red),
            ColorModel( color: UIColor.red),
            ColorModel( color: UIColor.red),
            ColorModel( color: UIColor.red),
            ColorModel( color: UIColor.red),
            ColorModel( color: UIColor.red),
            ColorModel( color: UIColor.red),
            ColorModel( color: UIColor.red),
            ColorModel( color: UIColor.red),
            ColorModel( color: UIColor.red),
            ColorModel( color: UIColor.red),
            ColorModel( color: UIColor.red),
            ColorModel( color: UIColor.red),
            ColorModel( color: UIColor.red),
            ColorModel( color: UIColor.red)
            
        ]),
        Section(colorrs: [
            ColorModel( color: UIColor.blue),
            ColorModel( color: UIColor.blue),
            ColorModel( color: UIColor.blue),
            ColorModel( color: UIColor.blue),
            ColorModel( color: UIColor.blue),
            ColorModel( color: UIColor.blue),
            ColorModel( color: UIColor.blue),
            ColorModel( color: UIColor.blue),
            ColorModel( color: UIColor.blue),
            ColorModel( color: UIColor.blue),
            ColorModel( color: UIColor.blue),
            ColorModel( color: UIColor.blue),
            ColorModel( color: UIColor.blue),
            ColorModel( color: UIColor.blue),
            ColorModel( color: UIColor.blue),
            ColorModel( color: UIColor.blue),
            ColorModel( color: UIColor.blue),
            ColorModel( color: UIColor.blue),
            ColorModel( color: UIColor.blue),
            ColorModel( color: UIColor.blue)
        ]),
        Section(colorrs: [
            ColorModel( color: UIColor.green),
            ColorModel( color: UIColor.green),
            ColorModel( color: UIColor.green),
            ColorModel( color: UIColor.green),
            ColorModel( color: UIColor.green),
            ColorModel( color: UIColor.green),
            ColorModel( color: UIColor.green),
            ColorModel( color: UIColor.green),
            ColorModel( color: UIColor.green),
            ColorModel( color: UIColor.green),
            ColorModel( color: UIColor.green),
            ColorModel( color: UIColor.green),
            ColorModel( color: UIColor.green),
            ColorModel( color: UIColor.green),
            ColorModel( color: UIColor.green),
            ColorModel( color: UIColor.green),
            ColorModel( color: UIColor.green),
            ColorModel( color: UIColor.green),
            ColorModel( color: UIColor.green),
            ColorModel( color: UIColor.green)
        ])
    ]
}
