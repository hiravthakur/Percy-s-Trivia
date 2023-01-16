//
//  Question.swift
//  Percy's Trivia
//
//  Created by Hirav Thakur on 2023-01-09.
//

import Foundation

struct Question: Hashable {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    //Stores all questions and their properties in an array.
    static var allQuestions = [
        Question(questionText: "Who is Percy based on?",
                possibleAnswers: ["Rick Riordan", "Haley Riordan", "Jack Paul", "Winston Churchill"], correctAnswerIndex: 1),
        Question(questionText:"What is Grover?", possibleAnswers: ["Satyr", "Human", "Monkey", "Panther"], correctAnswerIndex: 0),
        Question(questionText: "Which book did Percy and Annabeth's hair change?", possibleAnswers: ["The Legend's Curse", "John and his Heresy", "Leaders of Olyumpus", "Titan's Curse"], correctAnswerIndex: 3),
        Question(questionText: "How old is Percy at the end of the first series?",
                 possibleAnswers: ["5", "7", "90", "16"], correctAnswerIndex: 3),
        Question(questionText: "Who was the hero of the great prophecy?", possibleAnswers: ["Jake Paul", "Logan Paul", "Luke Callestan", "Joe Biden"], correctAnswerIndex: 2),
        Question(questionText: "How is Tyson related to Percy?", possibleAnswers: ["Dad", "Mom", "Half Brother", "Step-Brother"], correctAnswerIndex: 2),
        Question(questionText: "What did Poseidon give Percy for his birthday?", possibleAnswers: ["Tea", "Coffee", "Sand","Sand Dollar"] , correctAnswerIndex: 3),
        Question(questionText: "What was Chiron's fake name?", possibleAnswers: ["Mr Brunner", "Mr Singh", "Mr Sodhi", "Mr Paul"], correctAnswerIndex: 0),
        Question(questionText: "Who is Rachel Elizabeth Dare?", possibleAnswers: ["The Messiah", "The New Oracle", "The Old Oracle", "The President"], correctAnswerIndex: 1),
        Question(questionText: "aaaaa?", possibleAnswers: ["Percy", "Jason", "Green elf", "Leo"], correctAnswerIndex: 2)
                 
    ]
}

