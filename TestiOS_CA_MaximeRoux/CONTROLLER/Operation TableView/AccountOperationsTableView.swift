//
//  AccountOperationsTableView.swift
//  TestiOS_CA_MaximeRoux
//
//  Created by ROUX Maxime on 06/04/2022.
//

import Foundation
import UIKit

class AccountOperationsTableView: UITableView, UITableViewDataSource, UITableViewDelegate {
    
    // MARK: - PROPERTIES

    // To store the Datas to use for the TableView
    var dataOperations: [Operation]?

    // MARK: - INITIALIZATION

    override func awakeFromNib() {
        super.awakeFromNib()
                
        // Refer to custom cell (.xib)
        register(UINib(nibName: "OperationsTableViewCell", bundle: nil), forCellReuseIdentifier: "OperationCell")
        
        delegate = self
        dataSource = self
    }

    
    // MARK: - CELLS OF TABLEVIEW
    
    // Number of cells
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataOperations?.count ?? 0
    }

    // Customize the cell (refer to .xib and fill infos with the Datas)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "OperationCell", for: indexPath) as? OperationsTableViewCell {

            cell.operationLabel.text = self.dataOperations?[indexPath.row].title
            
            let amount: String = self.dataOperations?[indexPath.row].amount ?? "0"
            cell.balanceLabel.text = amount + " €"
            cell.dateLabel.text = self.dataOperations?[indexPath.row].date

            return cell
        }
        return UITableViewCell()
    }
}
