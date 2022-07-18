//
//  Duration.swift
//  KiwiTask
//
//  Created by Ali Asadi on 4/24/1401 AP.
//

import Foundation
struct Duration: Codable {
    let departure, durationReturn, total: Int

    enum CodingKeys: String, CodingKey {
        case departure
        case durationReturn = "return"
        case total
    }
}
