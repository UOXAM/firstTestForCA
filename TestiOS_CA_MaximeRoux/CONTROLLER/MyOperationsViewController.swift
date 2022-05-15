//
//  MyOperationsViewController.swift
//  TestiOS_CA_MaximeRoux
//
//  Created by ROUX Maxime on 06/04/2022.
//

import UIKit
import Foundation

class MyOperationsViewController: UIViewController {
    
    // MARK: - OUTLETS

    @IBOutlet weak var operationsTableView: AccountOperationsTableView!
    @IBOutlet weak var accountLabel: UILabel!
    @IBOutlet weak var balanceLabel: UILabel!
    
    // MARK: - PROPERTIES

    var accountPassed: Account?
    var operationsPassed: [Operation]?
    
    // MARK: - VIEWDIDLOAD
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Sort operations data
        var sortedOperationPassed = operationsPassed?.sorted{ $0.title < $1.title }
        sortedOperationPassed = sortedOperationPassed?.sorted{ $0.date < $1.date }
        
        // Send datas to tableView
        self.operationsTableView.dataOperations = sortedOperationPassed
        
        // Show the Account and its balance (sub title of the screen)
        self.accountLabel.text = accountPassed?.label
        let balance: Double = accountPassed?.balance ?? 0
        self.balanceLabel.text = String(format: "%.2f", balance)
    }

}
