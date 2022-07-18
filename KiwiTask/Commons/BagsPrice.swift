//
//  BagsPrice.swift
//  KiwiTask
//
//  Created by Ali Asadi on 4/24/1401 AP.
//

import Foundation
struct BagsPrice: Codable {
    let the1, the2, hand: Double?
    let personalItem: Int?

    enum CodingKeys: String, CodingKey {
        case the1 = "1"
        case the2 = "2"
        case hand
        case personalItem = "personal_item"
    }
}
