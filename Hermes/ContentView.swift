//
//  ContentView.swift
//  Hermes
//
//  Created by José Ruiz on 3/1/24.
//

import SwiftUI

struct ContentView: View {
    let computers: [Computer] = Bundle.main.decode("computers.json")
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(computers) { copmuter in
                        Text(copmuter.name)
                    }
                }
            }
            .navigationTitle("Computers")
        }
    }
}

#Preview {
    ContentView()
}
