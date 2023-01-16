//
//  ScoreViewModel.swift
//  Percy's Trivia
//
//  Created by Hirav Thakur on 2023-01-11.
//

import Foundation

struct ScoreViewModel  {
    let correctGuesses: Int
    let incorrectGuesses: Int
    //Calculates the percentage the user scored.
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
    
}
