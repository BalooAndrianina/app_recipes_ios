//
//  RecipesListView.swift
//  app_recipes_ios
//
//  Created by Andriantsialonina on 17/11/2025.
//

import Foundation
import SwiftUI

struct RecipesListView : View { //protocole view
    let repository = Injector.recipesRepository
    @State private var onlyMissingProducts = false
    
    var body: some View{
        VStack{
            Text("Recipes")
                .font(.title)
            List(repository.recipes){ recipe in
                if !onlyMissingProducts{
                    RecipeView(recipe: recipe)
                        .listRowSeparator(.hidden)
                }
            }
            .listStyle(.plain)
        }
    }
}

#Preview {
    RecipesListView()
}
