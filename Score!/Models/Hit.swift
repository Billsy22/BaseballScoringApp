//
//  Hit.swift
//  Score!
//
//  Created by Taylor Bills on 6/9/18.
//  Copyright © 2018 Taylor Bills. All rights reserved.
//

import Foundation

enum Hit: Codable {
    
    // MARK: -  Codable
    
    init(from decoder: Decoder) throws {
        <#code#>
    }
    
    func encode(to encoder: Encoder) throws {
        <#code#>
    }
    
    // MARK: -  Cases
    
    case single
    case double
    case triple
    case homerun
    case ground
}
