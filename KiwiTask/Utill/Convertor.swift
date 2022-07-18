//
//  Convertor.swift
//  KiwiTask
//
//  Created by Ali Asadi on 4/26/1401 AP.
//

import Foundation
class Convertor{
    
    func secondsTODate(dateInt:Int64)->String{
        let epochTime = TimeInterval(dateInt) / 1000
        let date = Date(timeIntervalSinceNow: epochTime)
        return convertDateFormat(oldDate: date)
    }
    
    func convertDateFormat(oldDate: Date) -> String {
        let olDateFormatter = DateFormatter()
        olDateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        let convertDateFormatter = DateFormatter()
        convertDateFormatter.dateFormat = "MMM dd yyyy"
        return convertDateFormatter.string(from: oldDate)
    }
}
