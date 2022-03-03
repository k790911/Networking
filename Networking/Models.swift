//
//  Models.swift
//  Networking
//
//  Created by 김재훈 on 2022/03/03.
//

import Foundation

struct Result: Codable {
    let data: [ResultItem]
}

struct ResultItem: Codable {
    let title: String
    let items: [String]
}
