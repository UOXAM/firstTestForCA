
//  IsCATableView.swift
//  TestiOS_CA_MaximeRoux
//
//  Created by ROUX Maxime on 04/04/2022.


import Foundation
import UIKit
//import CollapsibleTableSectionViewController

class BankAccountsTableView : UITableView, UITableViewDataSource, UITableViewDelegate {
    
    // MARK: - PROPERTIES
    
    // To store the Datas to use for the TableView
    var dataBanks: [Bank]?
    
    // To send account and its operations to next screen (via segue)
    var accountToPass: Account?
    var operationsToPass: [Operation]?
    
    // MARK: - INITIALIZATION
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Refer to custom section (.xib)
        register(UINib(nibName: "CustomSectionHeader", bundle: nil), forHeaderFooterViewReuseIdentifier: "customSectionHeader")
        
        // Refer to custom cell (.xib)
        register(UINib(nibName: "AccountTableViewCell", bundle: nil), forCellReuseIdentifier: "AccountCell")

        delegate = self
        dataSource = self
    }
        
    // MARK: - SECTIONS OF TABLEVIEW

    // Number of sections (Banks)
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.dataBanks?.count ?? 0
    }
    
    // Customize the section header (refer to .xib and fill infos with the Datas)
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        print(section)

        let accounts = self.dataBanks?[section].accounts
        let sumBalance = Calcul().sumBalance(accounts!)

        let headerSection = dequeueReusableHeaderFooterView(withIdentifier: "customSectionHeader") as! CustomSectionHeader

        headerSection.bankAccountLabel.text = self.dataBanks?[section].name
        headerSection.bankBalanceLabel.text = String(format: "%.2f", sumBalance) + " €"
                
        return headerSection
    }

    // MARK: - CELLS OF TABLEVIEW
    
    // Number of cells in each section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // Show or not cells of the section (bank accounts) according to the boolean isOpen
        if self.dataBanks?[section].isOpen == nil || self.dataBanks?[section].isOpen == false {
            return (self.dataBanks?[section].accounts.count) ?? 0
        } else {
            return (self.dataBanks?[section].accounts.count) ?? 0
        }
    }
    
    // Customize the cell (refer to .xib and fill infos with the Datas)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        print("indexPath : \(indexPath)")

        if let cell = tableView.dequeueReusableCell(withIdentifier: "AccountCell", for: indexPath) as? AccountTableViewCell {
            cell.accountLabel.text = self.dataBanks?[indexPath.section].accounts[indexPath.row].label
            
            let balance: Double = self.dataBanks?[indexPath.section].accounts[indexPath.row].balance ?? 0
            cell.accountBalanceLabel.text = String(format: "%.2f", balance) + " €"
            return cell
        }

        return UITableViewCell()
    }
    let myAccountsViewController = MyAccountsViewController()

    //     MARK: - TAP ON CELL AND SEGUE
    
    // Tap on cell and perform segue
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
                print("indexPath : \(indexPath)")

//        if indexPathForSelectedRow?.row == indexPath.row {
            
            
        accountToPass = self.dataBanks?[indexPath.section].accounts[indexPath.row]
        operationsToPass = self.dataBanks?[indexPath.section].accounts[indexPath.row].operations

        self.myAccountsViewController.performSegue(withIdentifier: "segueToAccountOperations", sender: MyOperationsViewController.self)
    }
    
    // Prepare segue

    func prepare(for segue: UIStoryboardSegue, sender: Any) {
        if segue.identifier == "segueToAccountOperations" {
            let successVC = segue.destination as! MyOperationsViewController
            successVC.operationsPassed = operationsToPass
            successVC.accountPassed = accountToPass

        }
    }
    
    
}
