//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Alexey on 09.06.2020.
//  Copyright © 2020 ByteApp. All rights reserved.
//

import Foundation

struct Place {
    
    let name: String
    let location: String
    let type: String
    let image: String
    
        static let restraintName = [
            "Bonsai", "Burger Heroes", "Kitchen", "Love&Life",
            "Morris Pub", "Sherlock Holmes", "Speak Easy", "X.O",
            "Балкан Гриль", "Бочка", "Вкусные истории", "Дастархан",
            "Индокитай", "Классик", "Шок"
        ]
    
    static func getPlaces() -> [Place] {
        
        var places = [Place]()
        
        for place in restraintName {
            places.append(Place(name: place, location: "Moscow", type: "Restaurant", image: place))
        }
         return places
    }
    
}

