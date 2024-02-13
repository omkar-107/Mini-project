
//
//  DataModel.swift
//  Mini-project
//
//  Created by mini project on 07/02/24.
//

import Foundation
import Contacts

struct Task: Identifiable {
    var id = UUID()
    var title: String
    var description: String
    var dueDate: Date
    var contact : ContactInfo?
    
    init(title: String = "", description: String = "", dueDate: Date = Date(), contact: ContactInfo ) {
        self.title = title
        self.description = description
        self.dueDate = dueDate
        self.contact = contact
    }
}

struct ContactInfo : Identifiable{
    var id = UUID()
    var firstName: String
    var lastName: String
    var phoneNumber: CNPhoneNumber?
}

