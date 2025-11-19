//
//  RecipesListView.swift
//  app_recipes_ios
//
//  Created by Andriantsialonina on 17/11/2025.
//

import Foundation
import SwiftUI

struct RecipesListView : View { //protocole view
    @StateObject var repository = Injector.recipesRepository
    
    var body: some View{
        VStack{
            Text("Recipes")
                .font(.title)
            List($repository.recipes){ $recipe in
                NavigationLink(destination: RecipeDetailsView(recipe: $recipe)){
                    RecipeView(recipe: $recipe)
                }
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
        }
    }
}

#Preview {
    RecipesListView()
}
