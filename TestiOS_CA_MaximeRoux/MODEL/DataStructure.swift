//
//  DataStructure.swift
//  TestiOS_CA_MaximeRoux
//
//  Created by ROUX Maxime on 04/04/2022.
//

import Foundation

// MARK: - Data Structure for JSON
struct DataStructure: Decodable {
    let banks: [Bank]
}

// MARK: - Bank
struct Bank: Codable {
    let name: String
    let isCA: Int
    let accounts: [Account]
}

// MARK: - Account
struct Account: Codable {
    let holder: String
    let label: String
    let balance: Double
    let operations: [Operation]

    enum CodingKeys: String, CodingKey {
        case holder
        case label
        case balance, operations
    }
}

// MARK: - Operation
struct Operation: Codable {
    let title, amount: String
    let date: String
}
