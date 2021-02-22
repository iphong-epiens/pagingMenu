//
//  TableViewController.swift
//  Aquaman-Demo
//
//  Created by Inpyo Hong on 2021/02/22.
//  Copyright © 2021 bawn. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    private static let CellIdentifier = "CellIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: TableViewController.CellIdentifier)
        
//        let testView = UIView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: 100))
//        testView.backgroundColor = .red
//
//        tableView.tableHeaderView = testView
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewController.CellIdentifier, for: indexPath)
        cell.textLabel?.text = "Title \(indexPath.row)"
        return cell
    }

}
