//
//  EmojiMemoryGame.swift
//  Memory
//
//  Created by Mario Fink on 09.04.21.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    // @Published is a property wrapper - whenever this changes it will call objectWillChange.send()
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["🐣", "🐰", "🐇", "🌼", "🥚"]
        let pairs = Int.random(in: 2...5)
        return MemoryGame<String>(numberOfPairs: pairs) { pairIndex in emojis[pairIndex]}
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
