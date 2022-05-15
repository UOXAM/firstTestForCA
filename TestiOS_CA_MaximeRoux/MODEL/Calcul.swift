//
//  Calcul.swift
//  TestiOS_CA_MaximeRoux
//
//  Created by ROUX Maxime on 06/04/2022.
//

import Foundation

public class Calcul {
    
    // Sum of all balances account of a Bank
    func sumBalance(_ accountList: [Account]) -> Double {
        var sum: Double = 0
        for i in accountList {
            sum += i.balance
        }
        return sum
    }
}
