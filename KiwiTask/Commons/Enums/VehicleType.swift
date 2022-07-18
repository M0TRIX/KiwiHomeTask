//
//  VehicleType.swift
//  KiwiTask
//
//  Created by Ali Asadi on 4/24/1401 AP.
//

import Foundation
enum VehicleType: String, Codable {
    case aircraft = "aircraft"
}

enum MapIdfrom: String, Codable {
    case bratislavaSk = "bratislava_sk"
    case katowicePl = "katowice_pl"
    case krakowPl = "krakow_pl"
    case pragueCz = "prague_cz"
    case viennaAt = "vienna_at"
    case wroclawPl = "wroclaw_pl"
}
enum FareCategory: String, Codable {
    case m = "M"
}
