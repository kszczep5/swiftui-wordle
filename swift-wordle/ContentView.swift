//
//  ContentView.swift
//  swift-wordle
//
//  Created by Kacper Szczepanski on 30/11/2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var wordleModel: WordleModel
    
    var body: some View {
        VStack{
            TextBoxes(wordleModel: wordleModel)
            Spacer()
                .frame(width: 100, height: 100)
            KeyboardNumbers(wordleModel: wordleModel)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(wordleModel: WordleModel())
    }
}
