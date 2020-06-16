//
//  StorageManager.swift
//  MyPlaces
//
//  Created by Alexey on 15.06.2020.
//  Copyright © 2020 ByteApp. All rights reserved.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    static func saveObject(_ place: Place) {
        
        try! realm.write {
            realm.add(place)
        }
    }
}
