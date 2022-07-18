
import UIKit
import Foundation

class ServiceApi {
    
    static var shared = ServiceApi()
    
    func getPopularFlight(url:String,completion:@escaping([Flight], URLResponse,Data)->()){
        let urlRequest = URLRequest(url: URL(string: url)!)
        URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            guard let data = data else { return }
            let decoder = JSONDecoder()
             let content = try? decoder.decode(Landing.self, from: data)
            completion(content?.data ?? [],response ?? URLResponse(),data)
        }.resume()
    }
}
