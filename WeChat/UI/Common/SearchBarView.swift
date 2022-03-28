//
//  SearchBarView.swift
//  SwiftUI-WeChatDemo
//
//  
//

import SwiftUI

struct SearchBarView: View {
    @Binding  var searchText:String
    var body: some View {
        /*
        HStack {

            
            (Text(Image(systemName: "magnifyingglass"))+Text(" self defined")+Text(L10n.SearchBar.hint.key))
                .foregroundColor(Asset.Color.searchGray.color)
                .padding(8)
                .frame(maxWidth: .infinity)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 4))
        }
        .padding(8)
        .background(Asset.Color.searchBarBackgroundGray.color)
    }*/
    ZStack{
        Rectangle()
            .foregroundColor(Color("LightGray"))
        HStack{
            Image(systemName: "magnifyingglass")
            TextField(L10n.SearchBar.hint.key,text:$searchText)
        }.foregroundColor(.gray)
            .padding(.leading,13)
    }.frame(height:40)
        .cornerRadius(13)
        .padding()
    }
}

struct SearchBarView_Previews: PreviewProvider {
    @State static var st=""
    static var previews: some View {
        SearchBarView(searchText:$st)
    }
}

