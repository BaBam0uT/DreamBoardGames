//
//  BoardGame.swift
//  DreamBoardGames
//
//  Created by Valentin Dedet on 30/11/2022.
//

import Foundation

struct BoardGame: Codable {
    let id: String
    let name: String
}

extension BoardGame: Identifiable, Hashable {}

struct BoardGamesResponse: Codable {
    var games: [BoardGame]
}
