//
//  BallGame.swift
//  Score!
//
//  Created by Taylor Bills on 6/9/18.
//  Copyright © 2018 Taylor Bills. All rights reserved.
//

import Foundation

struct BallGame: Codable {
    
    // MARK: -  Properties
    let innings: [Inning]
    let homeTeam: Team
    let visitingTeam: Team
}
