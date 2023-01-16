//
//  QuestionView.swift
//  Percy's Trivia
//
//  Created by Hirav Thakur on 2023-01-11.
//

import SwiftUI

struct QuestionView: View {
    //Allows for access to GameViewModel
    @EnvironmentObject var viewModel: GameViewModel
    //question is defined as a struct of instance Question to allow for cleaner code.
    let question: Question
     //A general template of how each question is formatted and displayed.
      var body: some View {
        VStack {
          Text(question.questionText)
            .font(.largeTitle)
            .bold()
            .multilineTextAlignment(.leading)
          Spacer()
            //For each possible answer for the current question, a seperate button is generated through recursion.
          HStack {
            ForEach(0..<question.possibleAnswers.count) { answerIndex in
              Button(action: {
                print("Tapped on option with the text: \(question.possibleAnswers[answerIndex])")
                  viewModel.makeGuess(atIndex: answerIndex)
              }) {
                  ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                                .background(viewModel.color(forOptionIndex: answerIndex)) 
              }
                //Once a guess is made and registered, the buttons are disabled.
              .disabled(viewModel.guessWasMade)
            }
        

          }
            //If a guess is made, a button is displayed that allows the user to go to the next question.
            if viewModel.guessWasMade {
                Button(action: { viewModel.displayNextScreen() }) {
                              BottomTextView(str: "Next")
                          }
                
                }
                }
            }
        }
      
    


struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
      QuestionView(question: Game().currentQuestion)
            .environmentObject(GameViewModel())
    }
}

