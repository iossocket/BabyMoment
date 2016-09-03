//
//  Moment.swift
//  BabyMoment
//
//  Created by twcn  on 9/3/16.
//  Copyright © 2016 kotlinchina. All rights reserved.
//

import Foundation
import RealmSwift

class Moment: Object {
    dynamic var assetLocationId: String = ""
    dynamic var uploadedAt: NSDate = NSDate()
    dynamic var photoTakenDate: NSDate = NSDate()
    
    func save() {
        let realm = try! Realm()
        try! realm.write {
            realm.add(self)
        }
    }
}

extension Moment {
    class func all() -> Results<Moment> {
        let realm = try! Realm()
        return realm.objects(Moment.self).sorted("uploadedAt", ascending: false)
    }
}
