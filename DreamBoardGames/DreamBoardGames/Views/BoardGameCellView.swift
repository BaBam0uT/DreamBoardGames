//
//  BoardGameCellView.swift
//  DreamBoardGames
//
//  Created by Valentin Dedet on 30/11/2022.
//

import SwiftUI

struct BoardGameCellView: View {
    let boardGame: BoardGame
    var body: some View {
        Text(boardGame.name)
    }
}
