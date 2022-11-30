//
//  KeyboardNumbers.swift
//  swift-wordle
//
//  Created by Kacper Szczepanski on 30/11/2022.
//

import SwiftUI

struct KeyboardNumbers: View {
    
    @ObservedObject var wordleModel: WordleModel
    
    var body: some View {
        VStack{
            HStack{
                ForEach(0 ..< 5) { item in
                    Button(action: {
                        self.wordleModel.chooseColumn(item)
                    }) {
                        Text("^")
                    }
                    .frame(width: 60, height: 30)
                    .border(.black, width: 1)
                }
            }
            
            HStack{
                ForEach(0 ..< 5) { item in
                    Button(action: {
                        self.wordleModel.numberClick(item)
                    }) {
                        Text("\(item)")
                    }
                    .frame(width: 60, height: 30)
                    .border(.black, width: 1)
                }
            }
            
            
            HStack{
                ForEach(5 ..< 10) { item in
                    Button(action: {
                        self.wordleModel.numberClick(item)
                    }) {
                        Text("\(item)")
                    }
                    .frame(width: 60, height: 30)
                    .border(.black, width: 1)
                }
            }
            
            HStack{
                Button(action: {
                    self.wordleModel.check()
                }) {
                    Text("Check")
                }
                .frame(width: 120, height: 30)
                .border(.black, width: 1)
                
                Button(action: {
                    self.wordleModel.newGame()
                }) {
                    Text("New Game")
                }
                .frame(width: 120, height: 30)
                .border(.black, width: 1)
            }
        }
    }
}

struct KeyboardNumbers_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardNumbers(wordleModel: WordleModel())
    }
}
