//
//  TaskDetailView.swift
//  Mini-project
//
//  Created by mini project on 08/02/24.
//

import SwiftUI

struct TaskDetailView: View {
    var task: String

    var body: some View {
        Text("Detail view for task: \(task)")
            .padding()
            .navigationTitle(task)
    }
}

#Preview {
    TaskDetailView(task: "task 1")
}
