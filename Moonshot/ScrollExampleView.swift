//
//  ScrollExampleView.swift
//  Moonshot
//
//  Created by Phil Prater on 9/13/23.
//

// ScrollView is a list that lets us declare content past screen boundaries.

import SwiftUI

struct ScrollExampleView: View {
    var body: some View {
// NOTE: Horizontal LazyScrolling
//        ScrollView(.horizontal) {
//            LazyHStack(spacing: 10) {
// NOTE: Vertical LazyScrolling
        ScrollView {
            LazyVStack(spacing: 10) {
                ForEach(0..<100) {
                    CustomText("Item \($0)")
                        .font(.title)
                }
            }
            .frame(maxWidth: .infinity) // Make list take up screen width, default just wraps content.
        }
    }
}

struct ScrollExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollExampleView()
    }
}

// NOTE: If we just use a normal HStack or VStack in a ScrollView, all the content views get made immediately. This CustomText struct shows this b/c when we start we see 100 "Creating a new CustomText" messages in the console. This is bad if we have a very large number of items. We can solve this with Lazy_Stacks
struct CustomText: View {
    let text: String

    var body: some View {
        Text(text)
    }

    init(_ text: String) {
        print("Creating a new CustomText \(text)")
        self.text = text
    }
}
