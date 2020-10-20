//
//  detail.swift
//  book
//
//  Created by Eatmyself on 2020/10/14.
//

import SwiftUI

struct detail: View {
    let s:snake
    @State private var currentPage = -1
    var body: some View {
        ZStack{
            Image("格子")
            .resizable()
            .scaledToFill()
            .frame(minWidth: 0, maxWidth: .infinity)
            .edgesIgnoringSafeArea(.all)
            .toolbar(content: {
                ToolbarItem(placement: .principal) {
                    Text(s.engname)
                    .fontWeight(.thin)
                    .foregroundColor(.gray)
                }
            })
            
            VStack{
                    Text("滑動看更多 →")
                        .font(.body)
                        .frame(width: 150, height: 30)
                        .offset(x: 130, y: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                    TabView(selection:$currentPage){
                        Image(s.name)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 270)
                        .clipped()
                        
                        ForEach(0..<s.pictures.count){(i)in
                            Image(s.pictures[i])
                                .resizable()
                                .scaledToFill()
                                .frame(height: 270)
                                .clipped()
                        
                        }
                    }
                .frame(height: 270, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .tabViewStyle(PageTabViewStyle())
                    Text(s.name)
                        .font(.title)
                    Text(s.engname)
                    Text("")
                Text(s.about)
                    .font(.subheadline)
                    .padding(.all)
            }
        }
    }
}

struct detail_Previews: PreviewProvider {
    static var previews: some View {
        detail(s:snake(name:"原色",engname:"original",pictures:["原色1"],about:"wwwwwwwwwwwwwww"))
    }
}
