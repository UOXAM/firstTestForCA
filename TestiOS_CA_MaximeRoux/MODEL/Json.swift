//
//  Json.swift
//  TestiOS_CA_MaximeRoux
//
//  Created by ROUX Maxime on 04/04/2022.
//

import Foundation

class Json {
    let datas = """
        {
            "banks": [
                {
                    "name": "CA Languedoc",
                    "isCA": 1,
                    "accounts": [
                        {
                            "order": 1,
                            "id": "151515151151",
                            "holder": "Corinne Martin",
                            "role": 1,
                            "contract_number": "32216549871",
                            "label": "Compte de dépôt",
                            "product_code": "00004",
                            "balance": 2031.84,
                            "operations": [
                                {
                                    "id": "2",
                                    "title": "Prélèvement Netflix",
                                    "amount": "-15,99",
                                    "category": "leisure",
                                    "date": "1644870724"
                                },
                                {
                                    "id": "4",
                                    "title": "CB Amazon",
                                    "amount": "-95,99",
                                    "category": "online",
                                    "date": "1644611558"
                                }
                            ]
                        },
                        {
                            "order": 2,
                            "id": "9892736780987654",
                            "holder": "M. et Mme Martin",
                            "role": 2,
                            "contract_number": "09320939231",
                            "label": "Compte joint",
                            "product_code": "00007",
                            "balance": 843.15,
                            "operations": [
                                {
                                    "id": "2",
                                    "title": "Prélèvement Netflix",
                                    "amount": "-15,99",
                                    "category": "leisure",
                                    "date": "1644784369"
                                },
                                {
                                    "id": "3",
                                    "title": "Prélèvement Century 21",
                                    "amount": "-750,00",
                                    "category": "housing",
                                    "date": "1644179569"
                                }
                            ]
                        },
                        {
                            "order": 3,
                            "id": "2354657678098765",
                            "holder": "Thaïs Martin",
                            "role": 6,
                            "contract_number": "29389382872",
                            "label": "Compte Mozaïc",
                            "product_code": "00007",
                            "balance": 209.39,
                            "operations": [
                                {
                                    "id": "2",
                                    "title": "Orange",
                                    "amount": "-15,99",
                                    "category": "leisure",
                                    "date": "1644438769"
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "Boursorama",
                    "isCA": 0,
                    "accounts": [
                        {
                            "order": 1,
                            "id": "09878900000",
                            "holder": "Corinne Martin",
                            "role": 1,
                            "contract_number": "32216549871",
                            "label": "Compte de dépôt",
                            "product_code": "00004",
                            "balance": 45.84,
                            "operations": [
                                {
                                    "id": "2",
                                    "title": "Tenue de compte",
                                    "amount": "-1,99",
                                    "category": "costs",
                                    "date": "1588690878"
                                },
                                {
                                    "id": "3",
                                    "title": "Tenue de compte",
                                    "amount": "-1,99",
                                    "category": "costs",
                                    "date": "1641760369"
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "Banque Pop",
                    "isCA": 0,
                    "accounts": [
                        {
                            "order": 1,
                            "id": "3982997777",
                            "holder": "Jean Martin",
                            "role": 1,
                            "contract_number": "32216549871",
                            "label": "Compte Chèques",
                            "product_code": "00004",
                            "balance": 675.04,
                            "operations": [
                                {
                                    "id": "2",
                                    "title": "Prêt immo",
                                    "amount": "-1331,44",
                                    "category": "costs",
                                    "date": "1644179569"
                                },
                                {
                                    "id": "2",
                                    "title": "CB La Vie Claire",
                                    "amount": "-53,20",
                                    "category": "food",
                                    "date": "1644784369"
                                },
                                {
                                    "id": "3",
                                    "title": "Prélèvement Spotify",
                                    "amount": "-10,00",
                                    "category": "leisure",
                                    "date": "1644611558"
                                },
                                {
                                    "id": "4",
                                    "title": "CB Billets SNCF",
                                    "amount": "-53,00",
                                    "category": "trip",
                                    "date": "1644870724"
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "CA Centre-Est",
                    "isCA": 1,
                    "accounts": [
                        {
                            "order": 1,
                            "id": "3982938",
                            "holder": "Corinne Martin",
                            "role": 1,
                            "contract_number": "32216549871",
                            "label": "Compte de dépôt",
                            "product_code": "00004",
                            "balance": 425.84,
                            "operations": [
                                {
                                    "id": "2",
                                    "title": "Tenue de compte",
                                    "amount": "-1,99",
                                    "category": "costs",
                                    "date": "1644870724"
                                },
                                {
                                    "id": "2",
                                    "title": "Prélèvement Orange",
                                    "amount": "-45,99",
                                    "category": "leisure",
                                    "date": "1644870724"
                                }
                            ]
                        }
                    ]
                }
            ]
        }

        """
}
