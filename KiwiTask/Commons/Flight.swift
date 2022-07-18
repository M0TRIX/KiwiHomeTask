
import Foundation

struct Flight: Codable {
    let id: String
    let flyFrom: From
    let flyTo: String
    let cityFrom: CityFrom
    let cityCodeFrom: From
    let cityTo, cityCodeTo: String
    let countryFrom, countryTo: Country
    let dTime, dTimeUTC, aTime, aTimeUTC: Int64
    let nightsInDest: String?
    let quality: Double
    let popularity: Int
    let distance: Double
    let duration: Duration
    let flyDuration: String
    let price: Int
    let conversion: Conversion
    let bagsPrice: BagsPrice
    let baglimit: [String: Int]
    let availability: Availability
    let airlines: [String]
    let route: [Route]
    let bookingToken: String
    let deepLink, trackingPixel: String
    let facilitatedBookingAvailable: Bool
    let pnrCount: Int
    let hasAirportChange: Bool
    let technicalStops: Int
    let throwAwayTicketing, hiddenCityTicketing, virtualInterlining: Bool
    let mapIdfrom: MapIdfrom
    let mapIdto: String
    let hashtags: [String]
    let excludedSegments: [ExcludedSegment]?
    
    enum CodingKeys: String, CodingKey {
        case id, flyFrom, flyTo, cityFrom, cityCodeFrom, cityTo, cityCodeTo, countryFrom, countryTo, dTime, dTimeUTC, aTime, aTimeUTC, nightsInDest, quality, popularity, distance, duration
        case flyDuration = "fly_duration"
        case price, conversion
        case bagsPrice = "bags_price"
        case baglimit, availability, airlines, route
        case bookingToken = "booking_token"
        case deepLink = "deep_link"
        case trackingPixel = "tracking_pixel"
        case facilitatedBookingAvailable = "facilitated_booking_available"
        case pnrCount = "pnr_count"
        case hasAirportChange = "has_airport_change"
        case technicalStops = "technical_stops"
        case throwAwayTicketing = "throw_away_ticketing"
        case hiddenCityTicketing = "hidden_city_ticketing"
        case virtualInterlining = "virtual_interlining"
        case mapIdfrom, mapIdto, hashtags
        case excludedSegments = "excluded_segments"
    }
}
