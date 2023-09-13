//
//  GeometryView.swift
//  Moonshot
//
//  Created by Phil Prater on 9/13/23.
//

import SwiftUI

// GeometryReader allows us to make auto-scaling images that take up a percentage of a device screen dimension

struct GeometryView: View {
    var body: some View {
        VStack {
            GeometryReader { geo in
                Image("Con Air")
                    .resizable()
                    .scaledToFit()
                    // This says "Make image 80% of screen width".
                    // (handles height automatically in this case)
                    .frame(width: geo.size.width * 0.8)
                    // Can center an image in a GeometryReader with this.
                    .frame(width: geo.size.width, height: geo.size.height)
            }
        }
    }
}

struct GeometryView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryView()
    }
}
