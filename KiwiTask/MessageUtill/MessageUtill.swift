
import UIKit

class MessageUtill{
    
    static func makeMessage(title:String,body:String,controller:UIViewController){
        let connectionAlert = UIAlertController(title: title, message: "\(body)", preferredStyle: UIAlertController.Style.alert)
        connectionAlert.addAction(UIAlertAction(title: "ok", style: .destructive))
        controller.present(connectionAlert, animated: true, completion: nil)
    }
}
