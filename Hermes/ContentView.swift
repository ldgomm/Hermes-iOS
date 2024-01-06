//
//  ContentView.swift
//  Hermes
//
//  Created by José Ruiz on 3/1/24.
//

import SwiftUI

struct ContentView: View {
    let phones: [Phone] = Bundle.main.decode("phones.json")
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(phones) { phone in
                        Text(phone.name)
                    }
                }
            }
            .navigationTitle("Phones")
        }
    }
}

#Preview {
    ContentView()
}
