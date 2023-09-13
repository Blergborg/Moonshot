//
//  ContentView.swift
//  Moonshot
//
//  Created by Phil Prater on 9/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        /*
         So, both sheet() and NavigationLink allow us to show a new view from the current one, but the way they do it is different and you should choose them carefully:

             NavigationLink is for showing details about the user’s selection, like you’re digging deeper into a topic.
         
             sheet() is for showing unrelated content, such as settings or a compose window.

         */
        NavigationView {
            List(0..<100) { row in
                NavigationLink {
                    Text("Detail \(row)")
                } label: {
                    Text("Row \(row)")
                }
            }
            .navigationTitle("SwiftUI")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
