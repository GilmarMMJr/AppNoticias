//
//  NewsData.swift
//  AppNoticias
//
//  Created by Gilmar Junior on 23/01/22.
//

import Foundation

struct NewsData {
    let title: String
    let byline: String
    let image: String
    let url: String
    
    init(title: String, byline: String, image: String, url: String){
        self.title = title
        self.byline = byline
        self.image = image
        self.url = url
    }
}
