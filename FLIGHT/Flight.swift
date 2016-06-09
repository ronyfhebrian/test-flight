//
//  Flight.swift
//  FLIGHT
//
//  Created by Rony Fhebrian on 6/7/16.
//  Copyright © 2016 Rony Fhebrian. All rights reserved.
//

import Foundation
import Alamofire

class Flight {
    private var _flightImage: UIImage!
    private var _flightCode: String!
    private var _flightName: String!
    
    var flightImage: UIImage {
        return _flightImage
    }
    
    var flightCode: String {
        return _flightCode
    }
    
    var flightName: String {
        return _flightName
    }
    
    init(flightImage: UIImage, codeFlight: String, flightName: String) {
        self._flightCode = codeFlight
        self._flightImage = flightImage
        self._flightName = flightName
    }
}