//
//  AddPhoneView.swift
//  Hermes
//
//  Created by José Ruiz on 12/2/24.
//

import SwiftUI

struct AddProductView: View {
    @State private var name: String = ""
    
    var body: some View {
        Form {
            TextField("Name", text: $name, prompt: Text("Enter your name"))
            
           
        }
    }
}

#Preview {
    AddProductView()
}
