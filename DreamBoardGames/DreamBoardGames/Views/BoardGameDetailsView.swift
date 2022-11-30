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
        VStack(alignment: .leading) {
            Text(boardGame.name)
                .font(.largeTitle)
                .bold()
            if let url = boardGame.imageURL {
                BoardGameImageView(boardGameURL: url)
            }
            Text("Description :")
                .font(.title)
            Text(boardGame.description)
        }
        .padding()
    }
}
