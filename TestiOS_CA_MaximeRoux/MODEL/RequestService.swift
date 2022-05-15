//
//  RequestService.swift
//  TestiOS_CA_MaximeRoux
//
//  Created by ROUX Maxime on 07/04/2022.
//

import Foundation
import Alamofire

final class RequestService {

    // MARK: - PROPERTIES

    private let bankApiUrl = URL(string: "https://a098a324-a16e-44e9-b8ed-b9fe07444510.mock.pstmn.io/accounts")
    private let session: AlamofireSession

    // MARK: - INITIALIZATION

    init(session: AlamofireSession = BankSession()) {
        self.session = session
    }

    // MARK: - NETWORK REQUEST AND MANAGEMENT OF API RESPONSE

    func getData(callback: @escaping (Result<DataStructure, NetworkError>) -> Void) {
                        
        session.request(url: bankApiUrl!) { dataResponse in
            
            guard let data = dataResponse.data else {
                callback(.failure(.noData))
                return
            }
            
            // response 404 working (because its a postman mockup), so I don't use bellow code
//            guard dataResponse.response?.statusCode == 200 else {
//                callback(.failure(.invalidResponse))
//                return
//            }
            
            guard let dataDecoded = try? JSONDecoder().decode(DataStructure.self, from: data) else {
                callback(.failure(.undecodableData))
                return
            }
            callback(.success(dataDecoded))
        }
    }
}
