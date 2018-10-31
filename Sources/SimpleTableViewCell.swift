//
//  RegistrableCell.swift
//  RegistrableCell
//
//  Created by minjuniMac on 05/10/2018.
//  Copyright © 2018 mjun. All rights reserved.
//

import UIKit

extension UITableViewCell: CellType { }
// TableView
public extension UITableView {
    /**
     Registers a class for use in creating new table cells
     */
    func register<Cell>(cell: Cell.Type,
                        forCellReuseIdentifier reuseIdentifier: String = Cell.identifier) where Cell: UITableViewCell {
        register(cell, forCellReuseIdentifier: reuseIdentifier)
    }
}


public extension UITableView {
    func dequeue<Cell>(_ reuseableCell: Cell.Type) -> Cell where Cell: UITableViewCell {
        guard let cell = dequeueReusableCell(withIdentifier: reuseableCell.identifier) as? Cell else {
            fatalError("Failed to dequeue a cell with identifier \(reuseableCell.identifier) matching type \(Cell.Type.self)")
        }
        return cell
    }
    
    func dequeue<Cell>(_ reuseableCell: Cell.Type, indexPath: IndexPath) -> Cell where Cell: UITableViewCell {
        guard let cell = dequeueReusableCell(withIdentifier: reuseableCell.identifier, for: indexPath) as? Cell else {
            fatalError("Failed to dequeue a cell with identifier \(reuseableCell.identifier) matching type \(Cell.Type.self)")
        }
        return cell
    }
}

