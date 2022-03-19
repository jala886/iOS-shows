
//
//  ContentView.swift
//  ligeShop
//
//  Created by Consultant.
//

import SwiftUI

struct ContentView: View {
    @State var isLogin = false
    var body: some View {
        if self.isLogin{
            TabBarView()
        }else{
            LoginView(isLogin:$isLogin)
        }
    }
}

struct ContentView_Previews:
    PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
