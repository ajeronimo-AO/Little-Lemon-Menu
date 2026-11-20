import Foundation
import SwiftUI

enum MenuCategory: String, CaseIterable, Identifiable, Hashable {
    case food = "Food"
    case drink = "Drinks"
    case dessert = "Desserts"

    var id: String { rawValue }

    var symbol: String {
        switch self {
        case .food: return "fork.knife"
        case .drink: return "waterbottle.fill"
        case .dessert: return "birthday.cake.fill"
        }
    }

    var tint: Color {
        switch self {
        case .food: return .orange
        case .drink: return .teal
        case .dessert: return .pink
        }
    }
}

enum DietaryTag: String, CaseIterable, Identifiable, Hashable {
    case vegetarian = "Vegetarian"
    case spicy = "Spicy"
    case glutenFree = "Gluten-free"

    var id: String { rawValue }

    var symbol: String {
        switch self {
        case .vegetarian: return "leaf.fill"
        case .spicy: return "flame.fill"
        case .glutenFree: return "checkmark.seal.fill"
        }
    }
}

enum SortOption: String, CaseIterable, Identifiable, Hashable {
    case name = "Name"
    case priceLowHigh = "Price: low to high"
    case priceHighLow = "Price: high to low"
    case calories = "Calories"
    case rating = "Rating"

    var id: String { rawValue }
}

struct MenuItem: Identifiable, Hashable {
    let name: String
    let summary: String
    let category: MenuCategory
    let price: Double          // in AOA (Kwanza)
    let calories: Int
    let prepMinutes: Int
    let rating: Double
    let symbol: String         // SF Symbol used as the item's picture
    let tags: Set<DietaryTag>
    let ingredients: [String]
    let allergens: [String]
    let pairings: [String]

    var id: String { name }
}

/// Navigation destinations for the menu stack.
enum MenuRoute: Hashable {
    case item(MenuItem)
    case options
}
