//
//  MemoryApp.swift
//  Memory
//
//  Created by Mario Fink on 08.04.21.
//

import SwiftUI

@main
struct MemoryApp: App {
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: EmojiMemoryGame())
        }
    }
}
