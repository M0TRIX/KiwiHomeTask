
import Foundation
import UIKit

class ViewModel{
    
    var serviceApi:ServiceApi?
    var controller:UIViewController?
    var flight: [Flight]?
    
    init(serviceApi:ServiceApi,controller:UIViewController) {
        self.serviceApi = serviceApi
        self.controller = controller
    }
    
    func getAllFlight(url:String,completion: @escaping ([Flight]) -> ()) {
        serviceApi?.getPopularFlight(url: url) { [weak self] flightList,response,data in
            let responseResult = ServiceValidator.checkResposnse(response: response, data: data)
            if responseResult == ServiceError.SUCCESS {
                self?.flight = flightList
                completion(flightList)
            }else{
                MessageUtill.makeMessage(title: "Network call error", body: "\(responseResult)", controller: self?.controller ?? UIViewController())
            }
        }
    }
    
}
