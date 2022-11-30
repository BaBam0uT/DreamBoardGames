//
//  BoardGameFetcher.swift
//  DreamBoardGames
//
//  Created by Valentin Dedet on 30/11/2022.
//

import Foundation

class BoardGameFetcher {
    let boardGamesPath = "https://api.boardgameatlas.com/api/search?order_by=rank&client_id=FmN8vBUlLt"
    
    func getBoardGames(currentSkip: Int) async throws -> BoardGamesResponse {
        let boardGamesURL = URL(string: boardGamesPath + "&skip=\(currentSkip)")!
        let request = URLRequest(url: boardGamesURL)
        let (data, _) = try await URLSession.shared.data(for: request)
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        let boardGamesResponse = try decoder.decode(BoardGamesResponse.self, from: data)
        return boardGamesResponse
    }
}
