//
//  DataViewModel.swift
//  Mini-project
//
//  Created by mini project on 08/02/24.
//

import Foundation

class TodoListViewModel: ObservableObject {
    @Published var tasks:[Task] 
//    = [
//        Task(title: "Complete SwiftUI Tutorial", description: "Finish the SwiftUI tutorial on Apple's website.", dueDate: Date(), contact: ""),
//        Task(title: "Read a Book", description: "Read a new book to expand knowledge.", dueDate: Date().addingTimeInterval(86400), contact: ""),
//        Task(title: "Exercise", description: "Go for a run or hit the gym.", dueDate: Date().addingTimeInterval(172800), contact: ""),
//        Task(title: "Learn a New Programming Language", description: "Explore a new programming language or framework.", dueDate: Date().addingTimeInterval(259200), contact: ""),
//        Task(title: "Write a Blog Post", description: "Share your thoughts and experiences with the community.", dueDate: Date().addingTimeInterval(345600), contact: "")
//    ]
    
    init(tasks: [Task]  = []) {
        self.tasks = tasks
    }

    func addTask(title: String, description: String, dueDate: Date, contact: ContactInfo) {
        let newTask = Task(title: title, description: description, dueDate: dueDate, contact: contact)
        tasks.append(newTask)
    }
    
    
}
