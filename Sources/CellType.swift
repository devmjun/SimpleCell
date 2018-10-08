//
//  CellType.swift
//  RegistrableCell
//
//  Created by minjuniMac on 06/10/2018.
//  Copyright © 2018 mjun. All rights reserved.
//

import Foundation

public protocol CellType {
    static var identifier: String { get }
}

extension CellType {
    static public var identifier: String {
        return String(describing: self)
    }    
}


