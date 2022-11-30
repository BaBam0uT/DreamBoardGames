//
//  DreamBoardGamesView.swift
//  DreamBoardGames
//
//  Created by Valentin Dedet on 30/11/2022.
//

import SwiftUI

struct DreamBoardGamesView: View {
    @StateObject var viewModel = DreamBoardGamesViewModel()
    var body: some View {
        TabView {
            TopGameView(viewModel: viewModel)
                .tabItem {
                    Label("Top Games", systemImage: "dice")
                }
        }
    }
}

struct DreamBoardGamesView_Previews: PreviewProvider {
    static var previews: some View {
        DreamBoardGamesView()
    }
}
