//
//  JsonDecoder.swift
//  TestiOS_CA_MaximeRoux
//
//  Created by ROUX Maxime on 04/04/2022.
//

import Foundation

class JsonDecodedNoNetworkCall {
    
    public var bankData: DataStructure?
    
    init(){
        bankData = getData()
    }
    
    func getData() -> DataStructure? {
        let json = Json().datas
        let jsonData = json.data(using: .utf8)
        let decoder = JSONDecoder()
        
        return try? decoder.decode(DataStructure.self, from: jsonData!)
    }
    
//    func addPropertyToData(_ bankList: [Bank]) {
//        for i in bankList {
//            bankData?.banks[i].append(isOpen = false)
//        }
//
//    }
    
}
