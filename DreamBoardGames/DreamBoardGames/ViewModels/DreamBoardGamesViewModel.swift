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
    
    func getBoardGames() async throws {
        let boardGameResponse = try await boardFetcher.getBoardGames()
        print("boardGameResponse : ")
        print(boardGameResponse)
        boardGames = boardGameResponse.games
    }
}
