//
//  SearchParams.swift
//  KiwiTask
//
//  Created by Ali Asadi on 4/24/1401 AP.
//

import Foundation
struct SearchParams: Codable {
    let flyFromType, toType: String
    let seats: Seats

    enum CodingKeys: String, CodingKey {
        case flyFromType = "flyFrom_type"
        case toType = "to_type"
        case seats
    }
}
