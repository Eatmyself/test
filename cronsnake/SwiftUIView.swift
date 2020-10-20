//
//  RightPersonView.swift
//  Demo
//
//  Created by SHIH-YING PAN on 2020/9/30.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack {
            Image("原色")
                .resizable()
                .scaledToFit()
        }
        .navigationTitle("spider man")
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SwiftUIView()
        }
    }
}
