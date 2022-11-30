//
//  TopGameListView.swift
//  DreamBoardGames
//
//  Created by Valentin Dedet on 30/11/2022.
//

import SwiftUI

struct TopGameListView: View {
    var boardGames: [BoardGame]
    var body: some View {
        ForEach(boardGames) { boardGame in
            NavigationLink(
                destination: {
                    BoardGameDetailsView(
                        boardGame:boardGame
                    )
                },
                label: {
                    BoardGameCellView(boardGame: boardGame)
                }
            )
        }
    }
}
