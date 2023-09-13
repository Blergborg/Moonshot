//
//  ContentView.swift
//  Moonshot
//
//  Created by Phil Prater on 9/12/23.
//

import SwiftUI

struct ContentView: View {
    // NOTE: since Bundle decode() extension now uses generic we need to specify types for astronauts and missions.
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("\(astronauts.count)")
            Text("\(missions.count)")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
