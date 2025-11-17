//
//  ContentView.swift
//  app_recipes_ios
//
//  Created by Andriantsialonina on 17/11/2025.
//

import SwiftUI

struct ContentView: View { //protocole view
    var body: some View { //propriété body de type view
        VStack { //pile verticale (Hstack pour l'horizontale)
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
