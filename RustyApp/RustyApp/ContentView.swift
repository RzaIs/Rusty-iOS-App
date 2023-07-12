//
//  ContentView.swift
//  RustyApp
//
//  Created by Rza Ismayilov on 13.07.23.
//

import SwiftUI

struct ContentView: View {
    @State var first: String = ""
    @State var second: String = ""
    @State var result: String = ""

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)

            Text("Hello, world!")

            TextField(text: $first) {
                Text("first number")
            }.multilineTextAlignment(.center)

            TextField(text: $second) {
                Text("second number")
            }.multilineTextAlignment(.center)

            Button("Sum") {
                hello_world()

                if let firstNum = Int32(first),
                   let secondNum = Int32(second) {
                    result = sum_two(firstNum, secondNum).description
                } else {
                    result = "please enter corrent integers"
                }

            }

            Text(result)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
