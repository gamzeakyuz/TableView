//
//  ThirdViewController.swift
//  TableView
//
//  Created by Gamze Akyüz on 11.01.2024.
//

import UIKit

class ThirdViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableViewCity: UITableView!
    @IBOutlet weak var tableViewCountry: UITableView!

    var country:[String] = [String]()
    var city:[String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableViewCity.delegate = self
        tableViewCity.dataSource = self
        
        tableViewCountry.delegate = self
        tableViewCountry.dataSource = self
        
        country = ["Turkey","Japonya","France","Korea"]
        city = ["İstanbul","Tokyo","Paris","Seoul"]
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        var dataCount:Int?
        
        if tableView == tableViewCountry {
            dataCount = country.count
        }
        
        if tableView == tableViewCity {
            dataCount = city.count
        }
        
        return dataCount!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell:UITableViewCell?
        
        if tableView == tableViewCountry {
            
            cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            
            cell?.textLabel?.text = country[indexPath.row]
            
        }
        
        if tableView == tableViewCity {
            cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            
            cell?.textLabel?.text = city[indexPath.row]
        }
        
        return cell!
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if tableView == tableViewCountry {
            print("Country  : \(country[indexPath.row])")
        }
        
        if tableView == tableViewCity {
           print("City  : \(city[indexPath.row])")
        }
    }
    

}
