//
//  snakerow.swift
//  book
//
//  Created by Eatmyself on 2020/10/14.
//

import SwiftUI

struct snakerow: View {
    let s: snake
    var body: some View {
        ZStack{
            Image("格子")
            .resizable()
            .scaledToFill()
            .frame(width:UIScreen.main.bounds.width,height: 80)
            .edgesIgnoringSafeArea(.all)
            .clipped()
            HStack {
                Image(s.name)
                .resizable()
                .padding(.vertical, 2.0)
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipped()
                .cornerRadius(200)
                VStack(alignment: .leading) {
                    Text(s.name)
                        .font(.title3)
                        
                Text(s.engname)
                }
                Spacer()
            }
        }
    }
}

struct snakerow_Previews: PreviewProvider {
    static var previews: some View {
        snakerow(s:snake(name:"原色",engname:"original",pictures:["原色1"],about:""))
    }
}
