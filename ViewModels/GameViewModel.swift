//
//  GameViewModel.swift
//  Percy's Trivia
//
//  Created by Hirav Thakur on 2023-01-11.
//

import SwiftUI


class GameViewModel: ObservableObject {
 
  @Published private var game = Game()
 
//The following variables have been declared as properties to allow for easy access.
    
  var currentQuestion: Question {
     game.currentQuestion
  }
    
    var correctGuesses: Int {
        game.guessCount.correct
    }
    
    var incorrectGuesses: Int {
        game.guessCount.incorrect
    }
//Displays the current question the user is on.
  var questionProgressText: String {
    "\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)"
  }
    //Determins whether a guess has been made or not by checking if in the array guesses[], a guess index has been stored. If it has, it returns true and so the variable is true.
    var guessWasMade: Bool{
        if let _ = game.guesses[currentQuestion] {
            return true
        }
        else {
            return false
        }
    }
    //Store a boolean value of whether the game is over or not.
    var gameIsOver: Bool {
        game.isOver
    }
    //Denotes what guess has been made for the current question and stores it.
    func makeGuess(atIndex index: Int) {
        game.makeGuessForCurrentQuestion(atIndex: index)
    }
    //When called, the function updateGameStatus() is called.
    func displayNextScreen() {
        game.updateGameStatus()
    }
    //Changes the colour of the button based on whether the guess was correct or not.
    func color(forOptionIndex optionIndex: Int) -> Color {
        if let guessedIndex = game.guesses[currentQuestion] {
            if guessedIndex != optionIndex {
                return GameColor.main
            }
            else if guessedIndex == currentQuestion.correctAnswerIndex {
                return GameColor.correctGuess
            }
            else {
                return GameColor.incorrectGuess
            }
        }
        else {
            return GameColor.main
        }
        
    }
    
}
