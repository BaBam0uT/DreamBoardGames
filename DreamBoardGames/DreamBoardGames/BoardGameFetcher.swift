//
//  BoardGameFetcher.swift
//  DreamBoardGames
//
//  Created by Valentin Dedet on 30/11/2022.
//

import Foundation

class BoardGameFetcher {
    let boardGamesURL = URL(string: "https://api.boardgameatlas.com/api/search?order_by=rank&client_id=FmN8vBUlLt")!
    
    func getBoardGames() async throws -> BoardGamesResponse {
        let request = URLRequest(url: boardGamesURL)
        let (data, _) = try await URLSession.shared.data(for: request)
        let decoder = JSONDecoder()
        let boardGamesResponse = try decoder.decode(BoardGamesResponse.self, from: data)
        return boardGamesResponse
    }
}
