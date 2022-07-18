//
//  ExcludedSegment.swift
//  KiwiTask
//
//  Created by Ali Asadi on 4/24/1401 AP.
//

import Foundation
struct ExcludedSegment: Codable {
    let aTime, aTimeUTC: Int
    let combinationID: String
    let dTime, dTimeUTC: Int
    let flyFrom: String
    let flightNo: Int
    let id, airline, operatingCarrier, operatingFlightNo: String
    let reason, flyTo: String
    let vehicleType: VehicleType

    enum CodingKeys: String, CodingKey {
        case aTime, aTimeUTC
        case combinationID = "combination_id"
        case dTime, dTimeUTC, flyFrom
        case flightNo = "flight_no"
        case id, airline
        case operatingCarrier = "operating_carrier"
        case operatingFlightNo = "operating_flight_no"
        case reason, flyTo
        case vehicleType = "vehicle_type"
    }
}
