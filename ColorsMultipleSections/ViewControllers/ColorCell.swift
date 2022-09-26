//
//  ColorCell.swift
//  ColorsMultipleSections
//
//  Created by Esraa Khaled   on 29/08/2022.
//

import UIKit

class ColorCell: RoundedCornersCollectionCell {
  static let reuseIdentifier = "ColorCell"
    //MARK: Properties
    override var isHighlighted: Bool {
        didSet {
            contentView.alpha = isHighlighted ? 0.7 : 1.0
        }
    }
    
    //MARK: Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
}
