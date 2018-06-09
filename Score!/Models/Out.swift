//
//  Out.swift
//  Score!
//
//  Created by Taylor Bills on 6/9/18.
//  Copyright © 2018 Taylor Bills. All rights reserved.
//

import Foundation

enum Out: Codable {
    
    // MARK: -  Codable
    
    init(from decoder: Decoder) throws {
        
    }
    
    func encode(to encoder: Encoder) throws {
        
    }
    
    // MARK: -  Cases
    
    case strikoutSwinging
    case strikeoutLooking
    case groundout
    case unassistedGroundout
    case flyout
    case flyoutFoulTerritory
    case doublePlay
    case triplePlay
    case sacrificeBunt
    case sacrificeFly
}
