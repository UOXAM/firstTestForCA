//
//  TableViewCell.swift
//  TestiOS_CA_MaximeRoux
//
//  Created by ROUX Maxime on 04/04/2022.
//

import UIKit

class AccountTableViewCell: UITableViewCell {
    
    // MARK: - OUTLETS

    @IBOutlet weak var accountLabel: UILabel!
    @IBOutlet weak var accountBalanceLabel: UILabel!
    @IBOutlet weak var showAccountOperationsButton: UIButton!
    
    
    // MARK: - INITIALIZATION

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
