//
//  ContentView.swift
//  Navigating
//
//  Created by Consultant on 3/17/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            
            TabView{
                
                HomeView()
                    .tabItem{
                        Label("Home",systemImage: "person")
                    }
                StoryView()
                    .tabItem {
                        Label("Story", systemImage: "book")
                    }
                
                FavoritesView()
                    .tabItem {
                        Label("Favorites", systemImage: "star")
                    }
            }
            //.accentColor(.green)
            //RadialGradient(colors: [.orange, .yellow],center:.center, startRadius: 100,endRadius: 475))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
