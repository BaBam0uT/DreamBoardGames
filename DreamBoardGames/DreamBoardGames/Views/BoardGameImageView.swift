//
//  BoardGameImageView.swift
//  DreamBoardGames
//
//  Created by Valentin Dedet on 30/11/2022.
//

import SwiftUI

struct BoardGameImageView: View {
    var boardGameURL: URL
    var body: some View {
        AsyncImage(url: boardGameURL) {
            phase in switch phase {
            case .empty:
                ZStack {
                    Color.clear
                    ProgressView()
                }
            case .success(let image):
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            default:
                Color.clear
            }
        }
    }
}
