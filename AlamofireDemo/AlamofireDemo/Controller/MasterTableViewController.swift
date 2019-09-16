//
//  MasterTableViewController.swift
//  AlamofireDemo
//
//  Created by Cuong on 9/16/19.
//  Copyright © 2019 Cuong. All rights reserved.
//

import UIKit

class MasterTableViewController: UITableViewController {
    
    var dataUsers: [UserInfo]?

    override func viewDidLoad() {
        super.viewDidLoad()
        setDataUser()
    }
    
    func setDataUser() {
        DataServices.sharedInstance.getdata(completedHandle: { data in
            self.dataUsers = data
            self.tableView.reloadData()
        })
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if dataUsers?.count == nil {
            return 0
        } else {
            return dataUsers!.count
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        cell.idLabel.text = "\(dataUsers![indexPath.row].id)"
        cell.userIdLabel.text = "\(dataUsers![indexPath.row].userId)"
        cell.titleLabel.text = dataUsers![indexPath.row].title
        cell.completedLabel.text = String(dataUsers![indexPath.row].completed)
        return cell
    }

}
