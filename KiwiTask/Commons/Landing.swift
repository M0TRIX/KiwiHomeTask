
//  Created by Ali Asadi 

import Foundation

struct Landing:Codable {
//    let searchID, currency: String
//    let fxRate: Int
    let data: [Flight]
    //let results: Int
   // let bestResults: [String]
//    let searchParams: SearchParams
//    let hashtags: [Hashtag]
//    let locationHashtags: [String]
//    let airlinesList: [AirlinesList]
//    let airportsList: [AirportsList]
//    let allAirlines, allStopoverAirports, allStopoverCountries: [String]
//    let allPrices: [String: Int]
//    let sortVersion: Int
    
    enum CodingKeys: String, CodingKey {
//        case searchID = "search_id"
//        case currency
//        case fxRate = "fx_rate"
        case data
       // case results = "_results"
       // case bestResults = "best_results"
//        case searchParams = "search_params"
//        case hashtags
//        case locationHashtags = "location_hashtags"
//        case airlinesList, airportsList
//        case allAirlines = "all_airlines"
//        case allStopoverAirports = "all_stopover_airports"
//        case allStopoverCountries = "all_stopover_countries"
//        case allPrices = "all_prices"
//        case sortVersion = "sort_version"
    }
}

