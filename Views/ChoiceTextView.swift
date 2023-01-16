//
//  ChoiceTextView.swift
//  Percy's Trivia
//
//  Created by Hirav Thakur on 2023-01-09.
//

import SwiftUI
//Used to format all 4 options available in the multiple choice questions.
struct ChoiceTextView: View {
    let choiceText: String
    
    var body: some View {
        Text(choiceText)
            .font(.body)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
            .border(GameColor.accent, width: 4)
    }
    
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "Hi")
    }
}
