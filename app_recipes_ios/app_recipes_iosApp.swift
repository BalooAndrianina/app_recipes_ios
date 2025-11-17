//
//  app_recipes_iosApp.swift
//  app_recipes_ios
//
//  Created by Andriantsialonina on 17/11/2025.
//

import SwiftUI

@main //point d'entrée de l'app
struct app_recipes_iosApp: App {
    var body: some Scene {
        WindowGroup { //représente une fenêtre de l'application
            NavigationStack{
                RecipesListView()
            }
        }
    }
}
