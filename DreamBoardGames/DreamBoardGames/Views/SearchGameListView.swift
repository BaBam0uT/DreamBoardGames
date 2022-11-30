//
//  SearchGameListView.swift
//  DreamBoardGames
//
//  Created by Valentin Dedet on 30/11/2022.
//

import SwiftUI

struct SearchGameListView: View {
    @ObservedObject var viewModel: DreamBoardGamesViewModel
    @State private var searchText = ""

    var body: some View {
        VStack {
            List {
                ForEach(viewModel.boardGamesSearched, id: \.self) { boardGame in
                    TopGameListView(
                        boardGames: viewModel.boardGamesSearched
                    )
                }
            }
            .searchable(text: $searchText, prompt: "Tap a Board Game").onChange(of: searchText) { searchText in
                Task { try await viewModel.getBoardGamesSearched(resultsSearch: searchText) }
            }
        }
    }
}
