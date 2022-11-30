//
//  swift_wordleApp.swift
//  swift-wordle
//
//  Created by Kacper Szczepanski on 30/11/2022.
//

import SwiftUI

@main
struct swift_wordleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(wordleModel: WordleModel())
        }
    }
}
