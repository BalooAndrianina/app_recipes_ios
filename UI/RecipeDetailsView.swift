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
        ScrollView{
            VStack(spacing: 30){
                HStack{
                    VStack(alignment : .leading){
                        Text("Prep Time : \(recipe.prep_time) mins")
                        Text("Cook Time : \(recipe.cook_time) mins")
                    }
                    
                    Spacer()
                    
                    Button("Edit recipe"){
                    }
                    .buttonStyle(.bordered)
                    .background(Color.yellow.opacity(0.3))
                    }
                
                HStack{
                    Text("Serving : ")
                    Text("\(recipe.serving)")
                    
                    Spacer()
                    HStack{
                        Button("-"){
                            recipe.serving -= 1
                        }
                        .padding(.horizontal, 15)
                        .disabled(recipe.serving <= 1)
                        
                        Divider().frame(height: 30).background(Color.gray)
                        
                        Button("+"){
                            recipe.serving += 1
                        }
                        .padding(.horizontal, 15)
                    }
                    .background(Color.yellow.opacity(0.3))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    Spacer()
                }
                    Image(recipe.photo_name)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 350,height: 350)
                    .clipped()
                    .cornerRadius(5)
        
                VStack(alignment : .leading){
                    Text("Ingredients")
                        .font(.system(size: 20, weight: .semibold))
                    ForEach(recipe.ingredients){ ingredient in
                        HStack{
                            Text("\(ingredient.name) ")
                            if ingredient.unit != "g" && ingredient.unit != "cl" {
                                Text("\(Int(ceil(ingredient.quantity)))")

                            }
                            else {
                                Text(String(format: "%.1f %@", ingredient.quantity, ingredient.unit))
                            }
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack(alignment : .leading){
                    Text("Directions")
                        .font(.system(size: 20, weight: .semibold))
                    Text(recipe.directions)
                        
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)

            }
            .padding()
            .navigationTitle(recipe.name)
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    RecipeDetailsView(recipe: .constant(Recipe(photo_name : "clafoutis", name : "Clafoutis", prep_time : 15, cook_time : 25, serving : 8, ingredients : [Ingredient(name : "sucre", quantity : 180, unit : "g" ), Ingredient(name : "poires", quantity : 6, unit : " " ), Ingredient(name : "oeufs" , quantity : 6, unit : " " ), Ingredient(name : "farine", quantity : 125, unit : "g" ), Ingredient(name : "crème liquide", quantity : 50, unit : "cl" ), Ingredient(name : "lait", quantity : 25, unit : "cl" ), Ingredient(name : "beurre", quantity : 10, unit : "cl" )], directions : "Fais fondre 200 g de chocolat noir avec 100 g de beurre. Dans un saladier, bats trois œufs avec 100 g de sucre jusqu’à ce que le mélange devienne mousseux. Ajoute ensuite 80 g de farine. Incorpore le chocolat fondu puis mélange jusqu’à obtenir une pâte bien lisse. Verse la préparation dans un moule beurré ou tapissé de papier cuisson. Fais cuire au four à 180 °C pendant environ vingt à vingt-cinq minutes. Laisse tiédir avant de démouler pour un gâteau fondant et savoureux.")))
}


