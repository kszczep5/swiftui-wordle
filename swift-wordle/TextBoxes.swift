//
//  TextBoxes.swift
//  swift-wordle
//
//  Created by Kacper Szczepanski on 30/11/2022.
//

import SwiftUI

struct TextBoxes: View {
    
    @ObservedObject var wordleModel: WordleModel
    
    var body: some View {
        VStack{
            ForEach(0 ..< 5) { item in
                HStack{
                    ForEach(0 ..< 5) { itemIn in
                        Text("\(self.wordleModel.answer[item][itemIn].0)")
                            .frame(width: 60, height: 30)
                            .background(self.wordleModel.answer[item][itemIn].1)
                            .border(.black, width: 1)
                    }
                }
            }
        }
    }
}

struct TextBoxes_Previews: PreviewProvider {
    static var previews: some View {
        TextBoxes(wordleModel: WordleModel())
    }
}
