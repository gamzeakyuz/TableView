//
//  Tickets.swift
//  TableView
//
//  Created by Gamze Akyüz on 12.01.2024.
//

import Foundation

class Tickets {
    var ticketId:Int?
    var movieName:String?
    var movieImageName:String?
    var ticketPrice:Double?
    
    init() {
        
    }
    
    init(ticketId:Int,movieName:String,movieImageName:String,ticketPrice:Double) {
        self.ticketId = ticketId
        self.movieName = movieName
        self.movieImageName = movieImageName
        self.ticketPrice = ticketPrice
    }
}
