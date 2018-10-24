//
//  TestCollectionViewController.swift
//  RegistrableCellTests
//
//  Created by minjuniMac on 08/10/2018.
//  Copyright © 2018 mjun. All rights reserved.
//

import UIKit

final class TestCollectionViewController: UICollectionViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.register(cell: TestCollectionViewCell.self)
        collectionView.register(cell: TestCollectionReusableHeaderView.self, forSupplementaryViewOfKind: .header)
        collectionView.register(cell: TestCollectionReusableFooterView.self, forSupplementaryViewOfKind: .footer)
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeue(TestCollectionViewCell.self, indexPath: indexPath)
        cell.backgroundColor = .red 
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionView.elementKindSectionHeader:
            let header = collectionView.dequeue(TestCollectionReusableHeaderView.self, .header, indexPath: indexPath)
            return header
        case UICollectionView.elementKindSectionFooter:
            let footer = collectionView.dequeue(TestCollectionReusableFooterView.self, .footer, indexPath: indexPath)
            return footer
        default:
            fatalError()
        }
    }
}

extension TestCollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 200)
    }
}
final class TestCollectionViewCell: UICollectionViewCell { }
final class TestCollectionReusableHeaderView: UICollectionReusableView { }
final class TestCollectionReusableFooterView: UICollectionReusableView { }
