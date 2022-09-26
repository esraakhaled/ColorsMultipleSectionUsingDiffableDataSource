//
//  ViewController.swift
//  ColorsMultipleSections
//
//  Created by Esraa Khaled   on 29/08/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    typealias DataSource = UICollectionViewDiffableDataSource<Section, ColorModel>
    typealias Snapshot = NSDiffableDataSourceSnapshot<Section, ColorModel>
    private var sections = Section.allSections
    private lazy var dataSource = makeDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.collectionViewLayout = configureLayout()
        collectionView.register(ColorCell.self, forCellWithReuseIdentifier: "ColorCell")
        applySnapshot(animatingDifferences: false)
    }
    //MARK: Functions
    func configureLayout() -> UICollectionViewCompositionalLayout{
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.16), heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = NSDirectionalEdgeInsets(top: 5, leading:5, bottom:5, trailing: 5)
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension:.fractionalWidth(0.16))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        let section = NSCollectionLayoutSection(group: group)
        section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 10, trailing: 10)
        //section.interGroupSpacing = 10
        return UICollectionViewCompositionalLayout(section: section)
    }
    func makeDataSource() -> DataSource {
        // 1
        let dataSource = DataSource(
            collectionView: collectionView,
            cellProvider: { (collectionView, indexPath, color) ->
                UICollectionViewCell? in
                // 2
                let cell = collectionView.dequeueReusableCell(
                    withReuseIdentifier: "ColorCell",
                    for: indexPath) as? ColorCell
                cell?.contentView.backgroundColor = color.color
                return cell
            })
        return dataSource
    }
    // 1
    func applySnapshot(animatingDifferences: Bool = true) {
        // 2
        var snapshot = Snapshot()
        // 3
        snapshot.appendSections(sections)
        // 4
        sections.forEach { section in
            snapshot.appendItems(section.colorrs, toSection: section)
        }
        // 5
        dataSource.apply(snapshot, animatingDifferences: animatingDifferences)
    }
}


