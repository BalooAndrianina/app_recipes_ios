//
//  Ingredient.swift
//  app_recipes_ios
//
//  Created by Andriantsialonina on 17/11/2025.
//
import Foundation

struct Ingredient: Identifiable{
    let id = UUID()
    var name : String
    var quantity : Float
    var unit : String
}
