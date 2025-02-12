//
//  Localization.swift
//  AvoSpot
//
//  Created by Petar  on 12.2.25..
//

import Foundation

struct Localization {
    
    //MARK: - Properties
    static var avocados: String { Localizator.get("Avocados") }
    static var recipes: String { Localizator.get("Recipes") }
    static var ripening: String { Localizator.get("Ripening") }
    static var settings: String { Localizator.get("Settings") }
    static var creamyGreenInfo: String { Localizator.get("Creamy, green, and full of...") }
    static var ingredients: String { Localizator.get("Ingredients") }
    static var instructions: String { Localizator.get("Instructions") }
    static var avocadoDishes: String { Localizator.get("Avocado Dishes") }
    static var avocadoFacts: String { Localizator.get("Avocado Facts") }
    static var avocadoRecipes: String { Localizator.get("Avocado Recipes") }
    static var allAboutAvocados: String { Localizator.get("All About Avocados") }
    static var everythingYouWantedInfo: String { Localizator.get("Everything you wanted...") }
    static var generalSettings: String { Localizator.get("General Settings") }
    static var application: String { Localizator.get("Application") }
    static var product: String { Localizator.get("Product") }
    static var compatibility: String { Localizator.get("Compatibility") }
    static var developer: String { Localizator.get("Developer") }
    static var thanksTo: String { Localizator.get("Thanks to") }
    static var version: String { Localizator.get("Version") }
    static var personalMessage: String { Localizator.get("Personal message") }
    static var displayAppInfo: String { Localizator.get("Display App info") }
    static var backgroundRefresh: String { Localizator.get("Background refresh") }
    static var iPhoneAndiPad: String { Localizator.get("iPhone & iPad") }
    static var developerValue: String { Localizator.get("DeveloperValue") }
    static var thanksToValue: String { Localizator.get("ThanksToValue") }
    static var versionOne: String { Localizator.get("1.0.0") }
    static var happyCoding: String { Localizator.get("Happy coding!") }
    static var toasts: String { Localizator.get("Toasts") }
    static var tacos: String { Localizator.get("Tacos") }
    static var salads: String { Localizator.get("Salads") }
    static var spreads: String { Localizator.get("Spreads") }
    static var guacamole: String { Localizator.get("Guacamole") }
    static var sandwiches: String { Localizator.get("Sandwiches") }
    static var soup: String { Localizator.get("Soup") }
    static var smoothies: String { Localizator.get("Smoothies") }
    static var servesX: String { Localizator.get("Serves: x") }
    static var prepX: String { Localizator.get("Prep: x") }
    static var cookingX: String { Localizator.get("Cooking: x") }
    static var stage: String { Localizator.get("Stage") }
}

final class Localizator {
    
    static func get(_ key: String) -> String {
        return NSLocalizedString(key, comment: "")
    }
}

