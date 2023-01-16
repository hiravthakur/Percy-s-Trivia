//
//  BottomTextView.swift
//  Percy's Trivia
//
//  Created by Hirav Thakur on 2023-01-11.
//

import SwiftUI

struct BottomTextView: View {
    let str: String
    //Formatted for text to be displayed neatly at the bottom of the screen.
    var body: some View {
        HStack {
            Spacer()
            Text(str)
                .font(.body)
                .bold()
                .padding()
            Spacer()
        }.background(GameColor.accent)
    }
}

struct BottomTextView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTextView(str: "Test")
    }
}
