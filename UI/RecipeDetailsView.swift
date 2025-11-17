//
//  RecipeDetailsView.swift
//  app_recipes_ios
//
//  Created by Andriantsialonina on 17/11/2025.
//

import Foundation
import SwiftUI

struct RecipeDetailsView : View {
    
    @Binding var recipe : Recipe
    
    var body: some View {
        VStack{
            Text(recipe.name)
        }
    }
}


