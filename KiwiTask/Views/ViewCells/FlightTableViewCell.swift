//
//  FlightTableViewCell.swift
//  KiwiTask
//
//  Created by Ali Asadi on 4/24/1401 AP.
//

import Foundation
import UIKit

class FlightTableViewCell:BaseTableViewCell{
        
    @IBOutlet weak var destination: UILabel!
    @IBOutlet weak var avatar:UIImageView!
    @IBOutlet weak var flyDate: UILabel!
    @IBOutlet weak var price: UILabel!
    
    override func bind<T>(object: T) {
        let value = object as? Flight
        destination.text = value?.cityTo
        price.text = "\(value?.price ?? 0)"
        flyDate.text = Convertor().secondsTODate(dateInt: value?.aTime ?? 0)
        avatar.loadImageByUrl(urlString: Domain().getImageUrl(imageName: value?.mapIdto ?? ""))
    }
}
