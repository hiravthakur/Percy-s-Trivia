//
//  ContentView.swift
//  Percy's Trivia
//
//  Created by Hirav Thakur on 2023-01-08.
//

import SwiftUI

struct GameView: View {
    //Property wrapper used to allow constant update of viewModel
    @StateObject var viewModel = GameViewModel()
    
    //Displays question number
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.center)
                    .padding()
                QuestionView(question: viewModel.currentQuestion)
                        }
            //Ensures foreground colour is white, the navigation bar is hidden for aesthetics and that viewModel is accessable by GameView.swift
            .foregroundColor(.white)
            .navigationBarHidden(true)
            .environmentObject(viewModel)
                        }
        //Once viewModel.gameIsOver goes from false to true, it activates .constant() and so triggers the NavigationLink to the Scoreboard
        .background(
            NavigationLink(destination: ScoreView(viewModel: ScoreViewModel(correctGuesses: viewModel.correctGuesses,
                                                                            incorrectGuesses: viewModel.incorrectGuesses)),
                           isActive: .constant(viewModel.gameIsOver),
                           label: { EmptyView() })
        )
        
                    }
           
                }
            
        
       
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
