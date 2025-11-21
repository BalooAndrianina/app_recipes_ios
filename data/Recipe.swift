//
//  Recipe.swift
//  app_recipes_ios
//
//  Created by Andriantsialonina on 17/11/2025.
//
import Foundation

struct Recipe: Identifiable {
    let id = UUID()
    var photo_name : String
    var name : String
    var prep_time : Int
    var cook_time : Int
    var serving : Int
    var base_serving : Int
    var ingredients : [Ingredient]
    var directions : String
}
