//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 이승진 on 2023/03/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello SwiftUI")
            .font(.largeTitle)
            .foregroundColor(.blue)
            .fontWeight(/*@START_MENU_TOKEN@*/.heavy/*@END_MENU_TOKEN@*/)
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
