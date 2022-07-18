//
//  Route.swift
//  KiwiTask
//
//  Created by Ali Asadi on 4/24/1401 AP.
//

import Foundation
struct Route: Codable {
    let id, combinationID, flyFrom, flyTo: String
    let cityFrom, cityCodeFrom, cityTo, cityCodeTo: String
    let dTime, dTimeUTC, aTime, aTimeUTC: Int
    let airline: String
    let flightNo: Int
    let operatingCarrier, operatingFlightNo, fareBasis: String
    let fareCategory: FareCategory
    let fareClasses, fareFamily: String
    let routeReturn: Int
    let latFrom, lngFrom, latTo, lngTo: Double
    let mapIdfrom, mapIdto: String
    let bagsRecheckRequired, viConnection, guarantee: Bool
    let equipment: String?
    let vehicleType: VehicleType
    let originalReturn: Int
    let followingAirportChange: Bool?

    enum CodingKeys: String, CodingKey {
        case id
        case combinationID = "combination_id"
        case flyFrom, flyTo, cityFrom, cityCodeFrom, cityTo, cityCodeTo, dTime, dTimeUTC, aTime, aTimeUTC, airline
        case flightNo = "flight_no"
        case operatingCarrier = "operating_carrier"
        case operatingFlightNo = "operating_flight_no"
        case fareBasis = "fare_basis"
        case fareCategory = "fare_category"
        case fareClasses = "fare_classes"
        case fareFamily = "fare_family"
        case routeReturn = "return"
        case latFrom, lngFrom, latTo, lngTo, mapIdfrom, mapIdto
        case bagsRecheckRequired = "bags_recheck_required"
        case viConnection = "vi_connection"
        case guarantee, equipment
        case vehicleType = "vehicle_type"
        case originalReturn = "original_return"
        case followingAirportChange = "following_airport_change"
    }
}
