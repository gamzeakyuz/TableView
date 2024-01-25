//
//  TableViewCell.swift
//  TableView
//
//  Created by Gamze Akyüz on 12.01.2024.
//

import UIKit

protocol TicketsTableViewCellProtocol {
    func buy(indexPath:IndexPath)
}

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var labelMovieName: UILabel!
    
    @IBOutlet weak var labelTicketPrice: UILabel!
    
    var cellProtocol:TicketsTableViewCellProtocol?
    var indexPath:IndexPath?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func siparisVerButton(_ sender: Any) {
        
        cellProtocol?.buy(indexPath: indexPath!)
        
    }

}
