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
                TopGameListView(
                    boardGames: viewModel.boardGames
                )
                .navigationTitle("Top Games")
            }
        }
        .task {
            try? await viewModel.getBoardGames()
        }
    }
}
