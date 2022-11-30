//
//  DreamBoardGamesViewModel.swift
//  DreamBoardGames
//
//  Created by Valentin Dedet on 30/11/2022.
//

import Foundation

@MainActor
class DreamBoardGamesViewModel: ObservableObject {
    @Published var boardGames = [BoardGame]()
    let boardFetcher = BoardGameFetcher()
    var currentSkip = 0
    
    func getBoardGames() async throws {
        let boardGameResponse = try await boardFetcher.getBoardGames(currentSkip: currentSkip)
        boardGames.append(contentsOf: boardGameResponse.games)
        currentSkip += 10
    }
}
