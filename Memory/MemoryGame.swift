//
//  MemoryGame.swift
//  Memory
//
//  Created by Mario Fink on 09.04.21.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card) {
        print("Card chosen: \(card)")
    }
    
    init(numberOfPairs: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairs {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(id: pairIndex*2, isMatched: false, content: content))
            cards.append(Card(id: pairIndex*2+1, isMatched: false, content: content))
        }
        cards.shuffle()
    }
    
    struct Card: Identifiable {
        var id: Int
        
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent // the "I don’t care" type - card content could be anything: strings, numbers, images…
    }
}
