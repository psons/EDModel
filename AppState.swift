//
//  AppState.swift
//  EffortDomain
//
//  Created by Paul Sons on 3/11/23.
//

import Foundation

public class AppState: Codable, CustomStringConvertible {
    var gSlot = EffortDomain.defaultGSlot  // index of an goal that will be used if none provided when creatig an Objective
    var oSlot = Goal.defaultOslot  // index of Objective that will be used if none provided when creatig a task.
    var tSlot = Objective.defaultTslot

    public var description: String {
        return "Appstate slots (G,O) (\(gSlot),\(oSlot))"
    }
    
    // avoding supporting more init constructors, but want a 2 Int way to init
//    static func factory(_ gs: Int, _ os: Int) -> AppState {
//        let newAppState = AppState()
//        newAppState.gSlot = gs
//        newAppState.oSlot = os
//        return newAppState
//    }

    public init(_ gSlot: Int = EffortDomain.defaultGSlot,
         _ oSlot: Int = Goal.defaultOslot ,
         _ tSlot: Int = Objective.defaultTslot) {
        self.gSlot = gSlot
        self.oSlot = oSlot
        self.tSlot = tSlot
    }
    
    
//    required init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.gSlot = try container.decode(Int.self, forKey: .gSlot)
//        self.oSlot = try container.decode(Int.self, forKey: .oSlot)
//    }
    
}
