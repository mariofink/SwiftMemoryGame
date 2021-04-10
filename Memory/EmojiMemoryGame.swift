//
//  EmojiMemoryGame.swift
//  Memory
//
//  Created by Mario Fink on 09.04.21.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["🐣", "🐰", "🐇"]
        return MemoryGame<String>(numberOfPairs: emojis.count) { pairIndex in emojis[pairIndex]}
    }
        
    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }

    // MARK: - Intent(s)
    
    func chooseCard(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
    
}
