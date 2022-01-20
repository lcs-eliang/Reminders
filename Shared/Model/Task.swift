//
//  Task.swift
//  Reminders (iOS)
//
//  Created by Xiaoyu Liang on 2022-01-20.
//

import Foundation

stuct Task: Identifiable {
    var id = UUID()
    var description: String
    var priority: TaskPriority
    var completed: Bool
}

let testData = [
    Task(description: "Study for math test", priority: . high, completed: true),
    Task(description: "cut my hair shorter", priority: . medium, completed: false),
    Task(description: "buy a humidifier", priority: .low, completed: false),
]
