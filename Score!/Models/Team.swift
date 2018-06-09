//
//  Team.swift
//  Score!
//
//  Created by Taylor Bills on 6/9/18.
//  Copyright © 2018 Taylor Bills. All rights reserved.
//

import Foundation

struct Team: Codable, Equatable {
    
    // MARK: -  Properties
    
    let teamName: String
    var players: [Player?]
    
    // MARK: -  Equatable Protocol
    
    static func == (lhs: Team, rhs: Team) -> Bool {
        return lhs.teamName == rhs.teamName &&
        lhs.players == rhs.players
    }
}
