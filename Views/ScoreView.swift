//
//  ScoreView.swift
//  Percy's Trivia
//
//  Created by Hirav Thakur on 2023-01-11.
//

import SwiftUI

struct ScoreView: View {
    let viewModel: ScoreViewModel
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            //The final score page which describes the percentage of correct choices while also displaying the exact number of right and wrong guesses.
            VStack {
                Spacer()
                Text("Final Score")
                    .font(.body)
                Text("\(viewModel.percentage)%")
                    .font(.system(size: 50))
                Spacer()
                VStack{
                    Text("Correct: \(viewModel.correctGuesses)")
                    Text("Incorrect: \(viewModel.incorrectGuesses)")
                }
                .font(.system(size: 30))
                Spacer()
                //Displays a navigation link back to the welcome screen.
                NavigationLink(destination: WelcomeView(), label: {BottomTextView(str: "Try Again")})
            }
            .foregroundColor(.white)
            .navigationBarHidden(true)
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(viewModel: ScoreViewModel(correctGuesses: 8, incorrectGuesses: 2))
    }
}
