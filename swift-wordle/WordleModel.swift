//
//  WordleModel.swift
//  swift-wordle
//
//  Created by Kacper Szczepanski on 30/11/2022.
//

import Foundation
import SwiftUI

final class WordleModel: ObservableObject {
    
    @Published var answer: [[(String, Color)]]
    private let goodAnswer: [String]
    private var verse: Int
    private var column: Int
    
    init(){
        verse = 0
        column = 0
        answer = Array(repeating: Array(repeating: (" ", .white), count: 5), count: 5)
        goodAnswer = ["1", "2", "3", "4", "5"]
    }
    
    func numberClick(_ number: Int){
        if (verse < 5) {
            answer[verse][column].0 = String(number)
        }
    }
    
    func chooseColumn(_ column: Int){
        self.column = column
    }
    
    func check(){
        if (verse < 5) {
            for i in 0...4 {
                if (goodAnswer[i] != answer[verse][i].0 && goodAnswer.contains(answer[verse][i].0)) {
                    answer[verse][i].1 = .yellow
                } else if (goodAnswer.contains(answer[verse][i].0) && goodAnswer[i] == answer[verse][i].0){
                    answer[verse][i].1 = .green
                } else {
                    answer[verse][i].1 = .gray
                }
            }
            verse += 1
            column = 0
        }
    }
    
    func newGame(){
        verse = 0
        column = 0
        answer = Array(repeating: Array(repeating: (" ", .white), count: 5), count: 5)
    }
    
}
