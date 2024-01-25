//
//  FourthViewController.swift
//  TableView
//
//  Created by Gamze Akyüz on 11.01.2024.
//

import UIKit

class FourthViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, TicketsTableViewCellProtocol {
    
    func buy(indexPath: IndexPath) {
        buy(indexPath: IndexPath.SubSequence(row: 0, section: 0))
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var movieList = [Tickets]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        //Nesneleri Oluşturma
        
        let movie = Tickets(ticketId: 1, movieName: "İnside Out", movieImageName: "insideout", ticketPrice: 35)
        
        movieList.append(movie)
        
    }
    func siparisVer(indexPath: IndexPath) {
        let mv = movieList[indexPath.row]
        print("\(mv.movieName!) sipariş verildi.Kazanç \(mv.ticketPrice!)")
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let mv = movieList[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        cell.labelMovieName.text = mv.movieName
        cell.labelTicketPrice.text = "\(mv.ticketPrice!) TL"
        cell.movieImageView.image = UIImage(named: mv.movieImageName!)
        
        cell.cellProtocol = self
        cell.indexPath = indexPath
        
        return cell
    
    }
    



}
