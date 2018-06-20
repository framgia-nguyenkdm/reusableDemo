//
//  People.swift
//  Demo_Reusable
//
//  Created by khuc.d.m.nguyen on 6/20/18.
//  Copyright © 2018 khuc.d.m.nguyen. All rights reserved.
//

import Foundation

class People {
    var name: String
    var photo: String?
    var job: String?
    
    init(name: String, photo: String?, job: String?) {
        self.name = name
        self.job = job
        self.photo = photo
    }
}
