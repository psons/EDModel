//
//  Task.swift
//  EffortDomain
//
//  Created by Paul Sons on 3/11/23.
//

import Foundation
public enum StatusVal: String, Codable {
    case abandoned = "abandoned"
    case completed = "completed"
    case scheduled = "scheduled"
    case in_progress = "in_progress"
    case unfinished = "unfinished"
    case todo = "todo"
    var state: String { return self.rawValue }
}


public class Task: Codable, CustomStringConvertible {
    var status: StatusVal = .todo
    var name: String
    var detail = ""
    let tid: String
    public var description: String {
        return "{Task} |status:\(status)|name: \(name)|detail: \(detail)|tid: \(tid)|"
    }

    public init(status: StatusVal = .todo, name: String, detail: String) {
        self.status = status
        self.name = name
        self.detail = detail
        self.tid = "Need to implement tid in init"
    }
}
