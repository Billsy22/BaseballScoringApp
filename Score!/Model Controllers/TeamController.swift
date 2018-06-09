//
//  TeamController.swift
//  Score!
//
//  Created by Taylor Bills on 6/9/18.
//  Copyright © 2018 Taylor Bills. All rights reserved.
//

import Foundation

class TeamController {
    
    // MARK: -  Properties
    
    static let shared = TeamController()
    var teams: [Team?]
    
    
    // MARK: -  Initializer
    
    init() {
        teams = loadFromPersistentStorage()
    }
    // MARK: -  CRUD
    
    // Create New Team
    func createTeam(withName name: String) {
        let newTeam = Team(teamName: name, players: [])
        teams.append(newTeam)
    }
    
    // Delete Team
    func remove(team: Team) {
        if let index = teams.index(of: team) {
        teams.remove(at: index)
        }
    }
    
    // Find Save Location
    func fileURLForTeams() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let documentDirectory = paths[0]
        let fileName = "teams.json"
        let url = documentDirectory.appendingPathComponent(fileName)
        return url
    }
    
    // Save Teams
    func saveTeamsToPersistence() {
        let jsonEncoder = JSONEncoder()
        do {
            let data = try jsonEncoder.encode(teams)
            try data.write(to: fileURLForTeams())
        } catch let error {
            print("Error saving teams to disk: \(error.localizedDescription); \(#file)")
        }
    }
    
    // Load Teams
    func loadFromPersistentStorage() -> [Team] {
        let jsonDecoder = JSONDecoder()
        do {
            let data = try Data(contentsOf: fileURLForTeams())
            let teams = try jsonDecoder.decode([Team].self, from: data)
            return teams
        } catch let error {
            print("Error loading teams from disk \(error.localizedDescription); \(#file)")
            return []
        }
    }
}
