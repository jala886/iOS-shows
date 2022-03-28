//
//  WeChatApp.swift
//  WeChat
//
//  Created by jianli on 3/27/22.
//

import SwiftUI

@main
struct WeChatApp: App {
    @AppStorage("AppLanguage")
        private var appLanguage: String = Language.English.code
    var body: some Scene {
        WindowGroup {
            TabContainer()
                .environment(\.locale, .init(identifier: appLanguage))
        }
    }
}
