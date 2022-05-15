//
//  TableViewCell.swift
//  TestiOS_CA_MaximeRoux
//
//  Created by ROUX Maxime on 06/04/2022.
//

import UIKit

class OperationsTableViewCell: UITableViewCell {

    // MARK: - OUTLETS

    @IBOutlet weak var operationLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var balanceLabel: UILabel!
    
    // MARK: - INITIALIZATION

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
    
}
