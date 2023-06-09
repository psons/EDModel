//
//  Goal.swift
//  EffortDomain
//
//  Created by Paul Sons on 3/11/23.
//

import Foundation

public let defaultMaxObjectives = 3

public class Goal: Codable, CustomStringConvertible {
    public static let defaultOslot = 0
    public static let invalidOslot = -1
    let _id: String
    var name = ""
    var maxObjectives = 3
    let gid: String
    var objectives: [Objective] = []
    public var description: String {
        let heading = "{Goal} |_id: \(_id)|name: \(name)|maxObjectives: \(maxObjectives)|gid: \(gid)|\n"
        var objectivesAsStr = ""
        for objective in objectives {
            objectivesAsStr += "\t\(objective)\n"
        }
        return heading + objectivesAsStr
    }

    public init(name: String, maxObjectives: Int = defaultMaxObjectives, createDefaultObjective: Bool = false) {
        self._id = "Need to implement _id in init"
        self.name = name
        self.maxObjectives = maxObjectives
        self.gid = "Need to implement gid in init"
        if createDefaultObjective {
            self.objectives.append(Objective(name: "default objective"))
        }
    }

    public func addObjective(objective: Objective) {
        self.objectives.append(objective)
    }

    /**
     Retuns the objective being removed, if the oSlot Index is valid in the objectives list.  ( Maybe the caller will undo, or put it in a different slot, or just tell the user.)
     Returns nil if the oSlot is out of range in the objectives list/
     todo: add some precaution agains index out of range.
     */
    public func removeObjective(oSlot: Int) -> Objective? {
        if self.objectives.indices.contains(oSlot) {
            let objectiveAtOSlot = self.objectives[oSlot]
            self.objectives.remove(at: oSlot)
            return objectiveAtOSlot
        }
        return nil
    }
    
    func objectiveStrings() -> String {
        var sList = ""
        for objective in self.objectives {
            sList += "\t\t\(objective)\n"
        }
        return sList
    }
    
}
