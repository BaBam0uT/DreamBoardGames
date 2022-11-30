//
//  SearchGameView.swift
//  DreamBoardGames
//
//  Created by Valentin Dedet on 30/11/2022.
//

import SwiftUI

struct SearchGameView: View {
    @ObservedObject var viewModel: DreamBoardGamesViewModel

    var body: some View {
        NavigationView {
            SearchGameListView(viewModel: viewModel)
            .navigationTitle("Search a Board Game")
        }
    }
}
