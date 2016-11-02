//
//  Item.swift
//  ToDo App
//
//  Created by echessa on 10/22/16.
//  Copyright © 2016 Echessa. All rights reserved.
//

import Foundation
import FirebaseDatabase

class Item {
    
    var ref: FIRDatabaseReference?
    var title: String?
    
    init (snapshot: FIRDataSnapshot) {
        ref = snapshot.ref
        
        let data = snapshot.value as! Dictionary<String, String>
        title = data["title"]! as String
    }
    
}
