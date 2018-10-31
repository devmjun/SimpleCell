//
//  SimpleTableViewHeaderFooter.swift
//  SimpleCell
//
//  Created by minjuniMac on 31/10/2018.
//  Copyright © 2018 mjun. All rights reserved.
//

import UIKit

extension UITableViewHeaderFooterView: CellType { }

public extension UITableView {
    /**
     Registers a class for use in creating new table header or footer views
     */
    func register<HeaderFooter>(headerFooter: HeaderFooter.Type,
                         forHeaderFooterViewReuseIdentifier reuseIdentifier: String = HeaderFooter.identifier) where HeaderFooter: UITableViewHeaderFooterView {
        register(headerFooter, forHeaderFooterViewReuseIdentifier: reuseIdentifier)
    }
}

public extension UITableView {
    func dequeue<HeaderFooter>(_ reusableHeaderFooter: HeaderFooter.Type) -> HeaderFooter where HeaderFooter: UITableViewHeaderFooterView {
        guard let cell = dequeueReusableHeaderFooterView(withIdentifier: reusableHeaderFooter.identifier) as? HeaderFooter else {
            fatalError("Failed to dequeue a cell with identifier \(reusableHeaderFooter.identifier) matching type \(HeaderFooter.Type.self)")
        }
        return cell
    }
}
