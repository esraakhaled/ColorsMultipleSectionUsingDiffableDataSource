//
//  ColorCollectionViewDelegate.swift
//  ColorsMultipleSections
//
//  Created by Esraa Khaled   on 29/08/2022.
//

import UIKit

class ColorCollectionViewDelegate: NSObject,UICollectionViewDelegateFlowLayout{
    
    //MARK: Variables
    let numberOfItemsPerRow : CGFloat
    let interItemSpacing: CGFloat
    weak var ViewController: UIViewController?
    
    //MARK: Constructor
    init(numberOfItemsPerRow : CGFloat, interItemSpacing: CGFloat){
        self.numberOfItemsPerRow = numberOfItemsPerRow
        self.interItemSpacing = interItemSpacing
    }
    
    //MARK: CollectionView Delegate functions
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let maxWidth = UIScreen.main.bounds.width
        let totalSpacing = interItemSpacing * numberOfItemsPerRow
        let itemWidth = ((maxWidth - totalSpacing) / numberOfItemsPerRow)
        return CGSize(width: itemWidth, height: itemWidth)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return interItemSpacing
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        if section == 0 {
            return UIEdgeInsets(top: 0, left:10, bottom: interItemSpacing/2, right: 10)
        }
        else{
            return UIEdgeInsets(top: interItemSpacing/2 , left: 10, bottom: (interItemSpacing/2), right:10)
        }
    }
    //MARK:  -- UICollectionViewDelegate -
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}



