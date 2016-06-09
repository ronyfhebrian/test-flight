//
//  FlightCell.swift
//  FLIGHT
//
//  Created by Rony Fhebrian on 6/7/16.
//  Copyright © 2016 Rony Fhebrian. All rights reserved.
//

import UIKit

class FlightCell: UITableViewCell {
    
    //var flight: Flight!
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var flightCode: UILabel!
    @IBOutlet weak var flightName: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureCell(flight: Flight) {

        flightCode.text = flight.flightCode
        flightName.text = flight.flightName
        img.image = flight.flightImage
    }

}
