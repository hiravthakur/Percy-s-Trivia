//
//  WelcomeView.swift
//  Percy's Trivia
//
//  Created by Hirav Thakur on 2023-01-11.
//

import SwiftUI

struct WelcomeView: View {
    

    var body: some View {
        NavigationView{
            ZStack {
                //Creates and formats the title of the quiz.
                GameColor.main.ignoresSafeArea()
                VStack{
                    Spacer()
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Welcome to the Percy Jackson Trivia!")
                            .font(.largeTitle)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                    }
                    Spacer()
                    //Creates a clickable button to take the user to the first quiz question.
                    NavigationLink(
                        destination: GameView(),
                        label: {
                            HStack {
                                Spacer()
                                Text("Begin")
                                    .font(.body)
                                    .bold()
                                    .padding()
                                    Spacer()
                                
                                
                            }.foregroundColor(GameColor.accent)
                        }
                    
                    )
                }
                .foregroundColor(.white)
                
            }
            
            
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
