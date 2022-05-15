//
//  BankSession.swift
//  TestiOS_CA_MaximeRoux
//
//  Created by ROUX Maxime on 07/04/2022.
//

import Foundation
import Alamofire

// MARK: - ALAMOFIRE

protocol AlamofireSession {
    func request(url: URL, callback: @escaping (AFDataResponse<Any>) -> Void)
}

final class BankSession: AlamofireSession {
    func request(url: URL, callback: @escaping (AFDataResponse<Any>) -> Void) {
        AF.request(url).responseJSON { dataResponse in
            callback(dataResponse)
        }
    }
}

// MARK: - NETWORK ERRORS

enum NetworkError:  Error {
    case noData, invalidResponse, undecodableData
}

extension NetworkError: CustomStringConvertible {
    var description: String {
        switch self {
        case .noData:
            return "No Data"
        case .invalidResponse:
            return "Invalid response"
        case .undecodableData:
            return "Undecodable data"
        }
    }
}
