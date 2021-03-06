//
//  TableViewController.swift
//  RegistrableCellTests
//
//  Created by minjuniMac on 08/10/2018.
//  Copyright © 2018 mjun. All rights reserved.
//

import UIKit

final class TestTableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.register(cell: TestTableViewCell.self)
        tableView.register(headerFooter: TestHeaderFooter.self)
    }
}

extension TestTableViewController  {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return tableView.dequeue(TestHeaderFooter.self)
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeue(TestTableViewCell.self)
        return cell
    }
}

class TestTableViewCell: UITableViewCell { }
class TestHeaderFooter: UITableViewHeaderFooterView { }
