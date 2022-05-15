//
//  ViewController.swift
//  TestiOS_CA_MaximeRoux
//
//  Created by ROUX Maxime on 04/04/2022.
//

import UIKit

class MyAccountsViewController: UIViewController {
    
    // MARK: - OUTLETS
    
    @IBOutlet weak var isCATableView: BankAccountsTableView!
    @IBOutlet weak var isNotCATableView: BankAccountsTableView!
    @IBOutlet weak var firstActivityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var secondActivityIndicator: UIActivityIndicatorView!
    
    // MARK: - PROPERTIES

    private let requestService = RequestService()
    var accountOperationsToPass: Account?
    var dataBanks: [Bank]?

    
    // MARK: - VIEWDIDLOAD

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: Network call
        // If it doesn't work (error or not access API) : use the json registered
        requestService.getData() { [weak self] result in
            
            // Start animation when loading
            self?.firstActivityIndicator.startAnimating()
            self?.firstActivityIndicator.isHidden = false
            self?.secondActivityIndicator.startAnimating()
            self?.secondActivityIndicator.isHidden = false

            DispatchQueue.main.async {
                switch result {
                case .success(let data):
//                    print(data)
                    self?.dataBanks = data.banks
                    
                case.failure(let error):
//                    print(error.description)
                    // Use the json registered
                    self?.dataBanks = JsonDecodedNoNetworkCall().bankData?.banks
                }
                                
                // Datas filtered by Credit Agricole banks
                let isCADataBanks = self?.dataBanks?.filter{ $0.isCA == 1 }.sorted{ $0.name < $1.name}
                
                // Datas filtered by Other banks
                let isNotCADataBanks = self?.dataBanks?.filter { $0.isCA == 0 }.sorted{ $0.name < $1.name }

                // Send previews datas to TableViews
                self?.isCATableView.dataBanks = isCADataBanks
                self?.isNotCATableView.dataBanks = isNotCADataBanks

                // Stop animation when loading is finished
                self?.firstActivityIndicator.stopAnimating()
                self?.firstActivityIndicator.isHidden = true
                self?.secondActivityIndicator.stopAnimating()
                self?.secondActivityIndicator.isHidden = true

                // Refresh TableViews
                self?.isCATableView.reloadData()
                self?.isNotCATableView.reloadData()
            }
        }
    }
}

