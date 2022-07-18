//
//  ViewController.swift
//  KiwiTask
//
//  Created by Ali Asadi on 4/24/1401 AP.
//

import UIKit

class ViewController: UIViewController {

    var viewModel:ViewModel?
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewModel = ViewModel(serviceApi: ServiceApi(), controller: self)
        getTheFlight()
    }

    
    func getTheFlight(){
        viewModel?.getAllFlight(url: Domain().getFullDomain(), completion: { [unowned self] flight in
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        })
    }

}

extension ViewController:UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "flightCell", for: indexPath) as! FlightTableViewCell
        if let value = self.viewModel?.flight{
            cell.bind(object: value[indexPath.row])
        }
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 240
    }
}
