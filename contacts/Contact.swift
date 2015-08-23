//
//  Contact.swift
//  contacts
//
//  Created by Quabblejack.com on 8/23/15.
//  Copyright (c) 2015 CQ. All rights reserved.
//

import UIKit

class Contact: NSObject {
    var name: String?
    var phoneNumber: String?
    
    init(name: String? = nil, phoneNumber: String? = nil) {
        self.name = name
        self.phoneNumber = phoneNumber
        super.init()
    
    }
}
