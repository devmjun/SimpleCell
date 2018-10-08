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
    func register<Cell>(cell: Cell.Type,
                        forCellReuseIdentifier reuseIdentifier: String = Cell.identifier) where Cell: UITableViewCell {
        register(cell, forCellReuseIdentifier: reuseIdentifier)
    }
}

public extension UITableView {
    func dequeue<Cell>(_ reuseableCell: Cell.Type) -> Cell? where Cell: UITableViewCell {
        return dequeueReusableCell(withIdentifier: reuseableCell.identifier) as? Cell
    }
    
    func dequeue<Cell>(_ reuseableCell: Cell.Type, indexPath: IndexPath) -> Cell? where Cell: UITableViewCell {
        return dequeueReusableCell(withIdentifier: reuseableCell.identifier, for: indexPath) as? Cell
    }
}

