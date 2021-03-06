//
//  RestCoordinates.swift
//  Hu-Food
//
//  Created by Nguyen The Trinh on 6/1/19.
//  Copyright © 2019 nguyen.the.trinh. All rights reserved.
//

import ObjectMapper

struct Coordinates {
    var latitude: Double
    var longitude: Double
}

extension Coordinates {
    init() {
        self.init(
            latitude: 0,
            longitude: 0
        )
    }
}

extension Coordinates: Mappable {
    init?(map: Map) {
        self.init()
    }
    
    mutating func mapping(map: Map) {
        latitude <- map["latitude"]
        longitude <- map["longitude"]
    }
}
