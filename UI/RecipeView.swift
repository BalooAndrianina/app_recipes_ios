//
//  RecipeView.swift
//  app_recipes_ios
//
//  Created by Andriantsialonina on 17/11/2025.
//

import Foundation
import SwiftUI

struct RecipeView : View { //protocole view
    
    @Binding var recipe: Recipe
    @State private var textHeight: CGFloat = .zero

    var body: some View { //propriété body de type view
        HStack(alignment: .top) {

            Image(recipe.photo_name)
                .resizable()
                .scaledToFill()
                .frame(width: textHeight,height: textHeight)
                .clipped()
                .cornerRadius(5)

            VStack(alignment: .leading, spacing: 4) {
                Text(recipe.name)
                    .font(.system(size: 20, weight: .semibold))
                Text("prep \(recipe.prep_time) mins")
                    .foregroundColor(.secondary)

                Text("cook \(recipe.cook_time) mins")
                    .foregroundColor(.secondary)
            }
            .frame(maxWidth : .infinity, alignment: .leading)
            .padding(8)
            .background(Color.yellow.opacity(0.3))
            .cornerRadius(5)
            .overlay(
                //on va récupérer la hauteur des textes pour pouvoir créer une image carrée avec la même hauteur
                GeometryReader { geo in
                    Color.clear
                        .onAppear {
                            textHeight = geo.size.height
                        }
                }
            )
        }
    }
}

#Preview {
    RecipeView(recipe: .constant(Recipe(photo_name : "clafoutis", name : "Clafoutis", prep_time : 15, cook_time : 25, serving : 8,base_serving: 8, ingredients : [Ingredient(name : "sucre", quantity : 180, unit : "g" ), Ingredient(name : "poires", quantity : 6, unit : " " ), Ingredient(name : "oeufs" , quantity : 6, unit : " " ), Ingredient(name : "farine", quantity : 125, unit : "g" ), Ingredient(name : "crème liquide", quantity : 50, unit : "cl" ), Ingredient(name : "lait", quantity : 25, unit : "cl" ), Ingredient(name : "beurre", quantity : 10, unit : "cl" )], directions : "Fais fondre 200 g de chocolat noir avec 100 g de beurre. Dans un saladier, bats trois œufs avec 100 g de sucre jusqu’à ce que le mélange devienne mousseux. Ajoute ensuite 80 g de farine. Incorpore le chocolat fondu puis mélange jusqu’à obtenir une pâte bien lisse. Verse la préparation dans un moule beurré ou tapissé de papier cuisson. Fais cuire au four à 180 °C pendant environ vingt à vingt-cinq minutes. Laisse tiédir avant de démouler pour un gâteau fondant et savoureux.")))
}
