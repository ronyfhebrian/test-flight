//
//  Service.swift
//  FLIGHT
//
//  Created by Delonn on 9/6/16.
//  Copyright © 2016 Rony Fhebrian. All rights reserved.
//

import UIKit
import Alamofire

class Service {
    
    let flightURL = "\(URL_BASE)"
    var flights = [Flight]()
    
    func downloadFlightDetails(completed: downloadComplete) {
        
        let url = NSURL(string: flightURL)!
        
        
        Alamofire.request(.GET, url).validate().responseJSON { (response) in
            
            switch response.result {
            case .Success:
                let json = response.result.value
                //print(json)
                
                if let dict = json as? [Dictionary<String, AnyObject>] {
                    
                
                    for item in dict {
                        
                        if let flightCode = item["flight_code"] as? String {
                            if let flightName = item["flight_name"] as? String {
                                if let flightImageUrl = item["flight_image"] as? String {
                                    print(flightCode)
                                    print(flightName)
                                    print(flightImageUrl)
                                    
                                    let url = NSURL(string: flightImageUrl)!
                                    let data = NSData(contentsOfURL: url)!
                                    let img = UIImage(data: data)!
                                    
                                    let flight = Flight(flightImage: img, codeFlight: flightCode, flightName: flightName)
                                    self.flights.append(flight)
                                    
                                }
                            }
                        }
                    
                    }//Dict
                }
                completed()
                
            case .Failure(let err):
                print(err.debugDescription)
                
            }
            
        }
        
    }
}

