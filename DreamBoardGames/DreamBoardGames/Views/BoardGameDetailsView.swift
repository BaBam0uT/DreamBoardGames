//
//  BoardGameDetailsView.swift
//  DreamBoardGames
//
//  Created by Valentin Dedet on 30/11/2022.
//

import SwiftUI

struct BoardGameDetailsView: View {
    var boardGame: BoardGame
    var body: some View {
        Text(boardGame.name)
    }
}
