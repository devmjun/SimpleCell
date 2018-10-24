//
//  RegistrableCollectionViewCell.swift
//  RegistrableCell
//
//  Created by minjuniMac on 06/10/2018.
//  Copyright © 2018 mjun. All rights reserved.
//

import UIKit

extension UICollectionReusableView: CellType { }

public enum SupplementaryType {
    case header
    case footer
    var identifier: String {
        switch self {
        case .header: return UICollectionView.elementKindSectionHeader
        case .footer: return UICollectionView.elementKindSectionFooter
        }
    }
}

// Collection View
public extension UICollectionView {
    /**
     Register a class for use in creating new collection view cells.
     */
    func register<Cell>(cell: Cell.Type,
                        forCellReuseIdentifier reuseIdentifier: String = Cell.identifier) where Cell: UICollectionViewCell {
        register(cell, forCellWithReuseIdentifier: reuseIdentifier)
    }
    /**
     Registers a class for use in creating supplementary views for the collection view.
     */
    func register<Cell>(cell: Cell.Type,
                        forSupplementaryViewOfKind reuseSupplementaryViewType: SupplementaryType,
                        forCellReuseIdentifier reuseIdentifier: String = Cell.identifier) where Cell: UICollectionReusableView {
        register(cell, forSupplementaryViewOfKind: reuseSupplementaryViewType.identifier, withReuseIdentifier: reuseIdentifier)
    }
    
}

public extension UICollectionView {
    /**
     Returns a reusable cell object located by its identifier
     */
    func dequeue<Cell>(_ reuseableCell: Cell.Type,
                       indexPath: IndexPath) -> Cell where Cell: UICollectionViewCell {
            guard let cell = dequeueReusableCell(withReuseIdentifier: reuseableCell.identifier, for: indexPath) as? Cell else {
                fatalError("Failed to dequeue a cell with identifier \(reuseableCell.identifier) matching type \(Cell.Type.self)")
            }
            return cell
    }
    
    /**
     Returns a reusable supplementary view located by its identifier and kind.
     */
    func dequeue<Cell>(_ reuseableSupplementaryView: Cell.Type,
                       _ ofKind: SupplementaryType,
                       _ withReuseIdentifier: String = Cell.identifier,
                       indexPath: IndexPath) -> Cell where Cell: UICollectionReusableView {
        guard let cell = dequeueReusableSupplementaryView(ofKind: ofKind.identifier, withReuseIdentifier: withReuseIdentifier, for: indexPath) as? Cell else {
            fatalError("Failed to dequeue a cell with SupplementaryView's identifier \(reuseableSupplementaryView.identifier) and identifier \(Cell.identifier) matching type \(Cell.Type.self)")
        }
        return cell
    }
}


