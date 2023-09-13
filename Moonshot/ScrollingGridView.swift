//
//  ScrollingGridView.swift
//  Moonshot
//
//  Created by Phil Prater on 9/13/23.
//

import SwiftUI

struct ScrollingGridView: View {
    // This layout is 3 columns (or rows) at fixed width of 80 points
//    let layout = [
//        GridItem(.fixed(80)),
//        GridItem(.fixed(80)),
//        GridItem(.fixed(80))
//    ]
    // This layout is as many columns (or rows) we can fit that have a min width of 80 and max width of 120 points
    let layout = [
        GridItem(.adaptive(minimum: 80, maximum: 120)),
    ]
    
    var body: some View {
        // Horizontal grid organization and scrolling
//        ScrollView(.horizontal) {
//            LazyHGrid(rows: layout) {
        // Vertical grid organization and scrolling
        ScrollView {
            LazyVGrid(columns: layout) {
                ForEach(0..<1000) {
                    Text("Item \($0)")
                }
            }
        }
    }
}

struct ScrollingGridView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollingGridView()
    }
}
