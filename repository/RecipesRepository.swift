//
//  recipes_repository.swift
//  app_recipes_ios
//
//  Created by Andriantsialonina on 17/11/2025.
//

import Foundation
/*
 protocol qui expose la liste de recipes en lecture.
 réalisé pendant les implantations de RecipesRepository
*/
protocol RecipesRepository: ObservableObject{
    var recipes: [Recipe] { get }
}
