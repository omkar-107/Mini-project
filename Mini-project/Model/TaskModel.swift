//
//  DataModel.swift
//  Mini-project
//
//  Created by mini project on 07/02/24.
//

import Foundation

struct Task: Identifiable {
    var id = UUID()
    var title: String
    var description: String
    var dueDate: Date
    var contact: String
    
    init(title: String, description: String, dueDate: Date, contact: String) {
        self.title = title
        self.description = description
        self.dueDate = dueDate
        self.contact = contact
    }
}

