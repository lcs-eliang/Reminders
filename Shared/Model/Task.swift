//
//  Task.swift
//  Reminders (iOS)
//
//  Created by Xiaoyu Liang on 2022-01-20.
//

import Foundation


class Task: Identifiable, ObservableObject {
    var id = UUID()
    var description: String
    var priority: TaskPriority
    @Published var completed: Bool
    
    internal init(id: UUID = UUID(), description: String, priority: TaskPriority, completed: Bool){
        self.id = id
        self.description = description
        self.priority = priority
        self.completed = completed
    }
}

let testData = [
    Task(description: "Study for math test", priority: .high, completed: true),
    Task(description: "cut my hair shorter", priority: .medium, completed: false),
    Task(description: "buy a humidifier", priority: .low, completed: false),
]
