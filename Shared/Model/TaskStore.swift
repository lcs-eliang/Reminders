//
//  TaskStore.swift
//  Reminders (iOS)
//
//  Created by Xiaoyu Liang on 2022-01-20.
//

import Foundation

class TaskScore: ObservableObject {
    @Published var tasks: [Task]
    
    init(task: [Task] = []) {
        self.tasks = tasks
    }
}

let testStore = TaskStore(tasks: testData)
