//
//  HomeView.swift
//  Navigating
//
//  Created by Consultant on 3/18/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        //ZStack{
         //   RadialGradient(colors: [.orange, .yellow],center:.center, startRadius: 100,endRadius: 475)
        VStack{
            Text("All About")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            Image(information.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
                .padding(40)
            Text(information.name)
                .font(.title)
        }
        //.edgesIgnoringSafeArea(.all)
        //.ignoresSafeArea(.all)
        //.background(LinearGradient(gradient: Gradient(colors:[.green, Color(red:200,green:200,blue:200)]), startPoint: .top, endPoint: .bottom))
        //}.edgesIgnoringSafeArea(.all)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
