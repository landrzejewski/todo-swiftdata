//
//  Todo.swift
//  Todos
//
//  Created by Łukasz Andrzejewski on 01/03/2024.
//

import Foundation
import SwiftData

@Model
class Todo {
    
    var title: String
    var dueDate: Date
    var priority: Int
    
    init(title: String, dueDate: Date = .now, priority: Int = 2) {
        self.title = title
        self.dueDate = dueDate
        self.priority = priority
    }
    
}
