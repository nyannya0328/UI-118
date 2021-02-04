//
//  UI_118App.swift
//  UI-118
//
//  Created by にゃんにゃん丸 on 2021/02/04.
//

import SwiftUI

@main
struct UI_118App: App {
    @StateObject var model = LoginViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
        }
    }
}
