//
//  Inning.swift
//  Score!
//
//  Created by Taylor Bills on 6/9/18.
//  Copyright © 2018 Taylor Bills. All rights reserved.
//

import Foundation

struct Inning: Codable {
    
    // MARK: -  Properties
    let hitTypes: [Hit]
    var hits: Int {
        return hitTypes.count
    }
    let outTypes: [Out]
    var outs: Int {
        return outTypes.count
    }
    let runs: Int
    let errors: Int
}
