//
//  RegistrableCellTests.swift
//  RegistrableCellTests
//
//  Created by minjuniMac on 08/10/2018.
//  Copyright © 2018 mjun. All rights reserved.
//

import XCTest
@testable import SimpleCell




class RegistrableCellTests: XCTestCase {
    var tableViewController: UITableViewController?
    override func setUp() {
        super.setUp()
        tableViewController = TestTableViewController()
        tableViewController?.tableView.reloadData()
        _ = tableViewController?.view
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        tableViewController = nil
        super.tearDown()
    }
    
    func test_IdentifierIsValidWhenRegisteringCell() {
        let cell = tableViewController?.tableView.cellForRow(at: IndexPath(row: 0, section: 0))
        XCTAssertNotNil(cell)
        XCTAssertEqual(cell?.reuseIdentifier, "TestTableViewCell")
    }
}

