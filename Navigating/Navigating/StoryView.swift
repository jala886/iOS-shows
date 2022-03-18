//
//  StoryView.swift
//  Navigating
//
//  Created by Consultant on 3/18/22.
//

import SwiftUI

struct StoryView: View {
    var body: some View {
        VStack{
            Text("My Story")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            ScrollView{
                Text(information.story)
                    .font(.body)
                    .padding()
            }
        }
        .padding([.top,.bottom],50)
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
