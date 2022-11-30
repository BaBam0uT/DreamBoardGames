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
        HStack {
            if let url = boardGame.imageURL {
                BoardGameImageView(boardGameURL: url)
                    .frame(width:100, height: 100)
            }
            Text(boardGame.name)
                .font(.title2)
        }
    }
}
