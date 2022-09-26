//
//  Datasource.swift
//  ColorsMultipleSections
//
//  Created by Esraa Khaled   on 29/08/2022.
//

import UIKit

class Datasource: NSObject,UICollectionViewDataSource{
    
    //MARK: CollectionView DataSource Functions
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let colorCell = collectionView.dequeueReusableCell(withReuseIdentifier: ColorCell.reuseIdentifier, for: indexPath) as? ColorCell
        else{
            fatalError("cell can not be created")
        }
        switch indexPath.section{
        case 0:
            colorCell.backgroundColor = UIColor.red
        case 1:
            
            colorCell.backgroundColor = UIColor.blue
        case 2:
            colorCell.backgroundColor = UIColor.green
        default:
            break
        }
        return colorCell
    }
    
}


