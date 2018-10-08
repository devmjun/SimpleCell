//
//  RegistableCollectionViewTests.swift
//  RegistrableCellTests
//
//  Created by minjuniMac on 08/10/2018.
//  Copyright © 2018 mjun. All rights reserved.
//

import XCTest
import SimpleCell


class RegistableCollectionViewTests: XCTestCase {
    var collectionViewController: UICollectionViewController?
    override func setUp() {
        super.setUp()
        collectionViewController = TestCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())
        collectionViewController?.collectionView.reloadData()
        collectionViewController?.collectionView.layoutIfNeeded()
        _ = collectionViewController?.view
    }

    override func tearDown() {
        super.tearDown()
    }
    
    func test_IdentierIsValidWhenRegisteringCell() {
        let cell = collectionViewController?.collectionView.cellForItem(at: IndexPath(item: 0, section: 0))
        XCTAssertNotNil(cell)
        XCTAssertEqual(cell?.reuseIdentifier, TestCollectionViewCell.identifier)
    }
    
    func test_IdentierIsValidWhenRegisteringHeader() {
        let header = collectionViewController?.collectionView.supplementaryView(forElementKind: UICollectionView.elementKindSectionHeader, at: IndexPath(item: 0, section: 0))
        XCTAssertNotNil(header)
        XCTAssertEqual(header?.reuseIdentifier, TestCollectionReusableHeaderView.identifier)
    }
    
    func test_IdentierIsValidWhenRegisteringFooter() {
        let Footer = collectionViewController?.collectionView.supplementaryView(forElementKind: UICollectionView.elementKindSectionFooter, at: IndexPath(item: 0, section: 0))
        XCTAssertNotNil(Footer)
        XCTAssertEqual(Footer?.reuseIdentifier, TestCollectionReusableFooterView.identifier)
    }

}
