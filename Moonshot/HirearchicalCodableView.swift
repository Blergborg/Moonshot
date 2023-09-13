//
//  HirearchicalCodableView.swift
//  Moonshot
//
//  Created by Phil Prater on 9/13/23.
//

import SwiftUI

//

struct User: Codable {
    let name: String
    let address: Address
}

struct Address: Codable {
    let street: String
    let city: String
}

struct HirearchicalCodableView: View {
    var body: some View {
        Button("Decode JSON") {
            let input = """
            {
                "name": "Taylor Swift",
                "address": {
                    "street": "555, Taylor Swift Avenue",
                    "city": "Nashville"
                }
            }
            """

            let data = Data(input.utf8)
            let decoder = JSONDecoder()
            if let user = try? decoder.decode(User.self, from: data) {
                print(user.address.street)
            }
        }
    }
}

struct HirearchicalCodableView_Previews: PreviewProvider {
    static var previews: some View {
        HirearchicalCodableView()
    }
}
