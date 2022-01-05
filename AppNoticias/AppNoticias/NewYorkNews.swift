//
//  NewYorkNewsViewController.swift
//  AppNoticias
//
//  Created by Gilmar Junior on 02/01/22.
//

import Foundation

struct NewYorkNews: Codable {
 
    let status, copyright: String
    let numResults: Int
    let results: [ResultNews]
    
    enum CodingKeys: String, CodingKey {
        case status, copyright
        case numResults = "num_results"
        case results
    }

}


struct ResultNews: Codable {
    let uri: String
    let url: String
    let title: String
    let byline: String
}
