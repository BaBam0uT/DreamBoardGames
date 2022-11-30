//
//  TopGameView.swift
//  DreamBoardGames
//
//  Created by Valentin Dedet on 30/11/2022.
//

import SwiftUI

struct TopGameView: View {
    @ObservedObject var viewModel: DreamBoardGamesViewModel

    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.boardGames) { boardGame in
                    Text(boardGame.name)
                }
                .navigationTitle("Board Games")
            }
        }
        .task {
            try? await viewModel.getBoardGames()
        }
    }
}
