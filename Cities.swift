//
//  Cities.swift
//  Register2
//
//  Created by admin on 4/18/19.
//  Copyright © 2019 admin. All rights reserved.
//

import Foundation

protocol Place {
    var name :  String { get  set }
}

class City: NSObject, Place {
    var cityCode :  Int
    var name: String
    
    init?(dictionary: JSON) {
        guard let cityCode = dictionary["CityCode"] as? Int else { return nil }
        guard let name = dictionary["Name"] as? String else { return nil }
        self.cityCode = cityCode
        self.name = name
    }
}
