//
//  RecipeEditView.swift
//  app_recipes_ios
//
//  Created by Andriantsialonina on 21/11/2025.
//

import Foundation
import SwiftUI

struct RecipeEditView : View {
    
    @Binding var recipe : Recipe
    
    var body: some View {
        ScrollView{
            VStack(spacing: 30){
                
        


            }
            .padding()
            .navigationTitle("Edit Recipes")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    RecipeDetailsView(recipe: .constant(Recipe(photo_name : "clafoutis", name : "Clafoutis", prep_time : 15, cook_time : 25, serving : 8,base_serving: 8, ingredients : [Ingredient(name : "sucre", quantity : 180, unit : "g" ), Ingredient(name : "poires", quantity : 6, unit : " " ), Ingredient(name : "oeufs" , quantity : 6, unit : " " ), Ingredient(name : "farine", quantity : 125, unit : "g" ), Ingredient(name : "crème liquide", quantity : 50, unit : "cl" ), Ingredient(name : "lait", quantity : 25, unit : "cl" ), Ingredient(name : "beurre", quantity : 10, unit : "cl" )], directions : "Fais fondre 200 g de chocolat noir avec 100 g de beurre. Dans un saladier, bats trois œufs avec 100 g de sucre jusqu’à ce que le mélange devienne mousseux. Ajoute ensuite 80 g de farine. Incorpore le chocolat fondu puis mélange jusqu’à obtenir une pâte bien lisse. Verse la préparation dans un moule beurré ou tapissé de papier cuisson. Fais cuire au four à 180 °C pendant environ vingt à vingt-cinq minutes. Laisse tiédir avant de démouler pour un gâteau fondant et savoureux.")))
}


