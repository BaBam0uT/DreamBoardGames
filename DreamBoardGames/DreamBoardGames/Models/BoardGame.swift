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
    let description: String
    let imageUrl: String?
}

extension BoardGame: Identifiable, Hashable {}

extension BoardGame {
    var imageURL: URL? {
        guard let imageURL = imageUrl else {
            return nil
        }
        return URL(string: imageURL)
    }
}

struct BoardGamesResponse: Codable {
    var games: [BoardGame]
}
