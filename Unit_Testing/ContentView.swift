//
//  ContentView.swift
//  Unit_Testing
//
//  Created by Mike Panitz on 6/8/23.
//

import SwiftUI

struct ContentView: View {
    @State var username: String = ""
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Text("Type your name here:")
            TextField("Type your name here:", text: $username)
            Text(username)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
