//
//  Game.swift
//  Percy's Trivia
//
//  Created by Hirav Thakur on 2023-01-10.
//

import Foundation

struct Game {
    //The count of what question the user is on, default is 0.
    private(set) var currentQuestionIndex = 0
    //All guesses are stored in an array with the Question and the index of the answer array.
    private(set) var guesses = [Question: Int]()
    //Set to false by default, it is changed to true when all questions are answered.
    private(set) var isOver = false
    //Leads to replayability as all questions are shuffled and may not always be in the same order.
    private let questions = Question.allQuestions.shuffled()
    
    //Counts the number of correct and incorrect guesses.
    var guessCount: (correct: Int, incorrect: Int) {
        var count: (correct: Int, incorrect: Int) = (0, 0)
        for (question, guessedIndex) in guesses {
            if question.correctAnswerIndex == guessedIndex {
                count.correct += 1
            }
            else {
                count.incorrect += 1
            }
        }
        return count
    }
    //Stores the total number of questions.
    var numberOfQuestions: Int {
        questions.count
    }
    //Stores the current question the user is on.
    var currentQuestion: Question {
        questions[currentQuestionIndex]
    }
    //When a guess is made, it sets the answer's index into the array.
    mutating func makeGuessForCurrentQuestion(atIndex index: Int) {
        guesses[currentQuestion] = index
    }
    //Updates the questions as the game progresses. Ensures that if no more questions remain, isOver is assigned as true.
    mutating func updateGameStatus() {
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
        }
        else {
            isOver = true
        }
    }
    
    
}
