//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 이승진 on 2023/03/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button {
            print("Hited2")
        } label: {
            Text("Hitme2!!")
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
