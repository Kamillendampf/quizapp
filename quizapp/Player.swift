//
//  Player.swift
//  quizapp
//
//  Created by Raphael Härle on 24.04.24.
//

import SwiftUI

struct Player : Identifiable {
    var id : UUID
    var name: String
    var score: Int
}



class Players: ObservableObject { 
    @Published var players: [Player] = []
    
    func addPlayer(name : String) {
        guard !name.isEmpty else { print("Der eingebebe Name ist leer")
                                         return }
        let newPlayer = Player(id : UUID(),name: name, score: 0)
        players.append(newPlayer)
    }
    
    func getPlayer() -> [Player]{
        return players
    }
    
    func getRankedPlayer() -> [Player]{
        return players.sorted { $0.score > $1.score }
    }
    
    func updateScore(for player: inout Player) {
        if let index = players.firstIndex(where: { $0.id == player.id }) {
              players[index].score += 1
          }
    }
}
