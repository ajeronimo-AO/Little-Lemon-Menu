import SwiftUI

/// Holds the current filter and sort settings shared by the grid and the options page.
@Observable
final class MenuFilter {
    static let priceCeiling: Double = 10_000
    static let priceStep: Double = 500

    var category: MenuCategory?            // nil = all categories
    var requiredTags: Set<DietaryTag> = [] // an item must have every selected tag
    var maxPrice: Double = MenuFilter.priceCeiling
    var sort: SortOption = .name

    var hasChanges: Bool {
        category != nil
            || !requiredTags.isEmpty
            || maxPrice < MenuFilter.priceCeiling
            || sort != .name
    }

    func reset() {
        category = nil
        requiredTags = []
        maxPrice = MenuFilter.priceCeiling
        sort = .name
    }

    func apply(to items: [MenuItem]) -> [MenuItem] {
        let filtered = items.filter { item in
            (category == nil || item.category == category)
                && requiredTags.isSubset(of: item.tags)
                && item.price <= maxPrice
        }

        switch sort {
        case .name:
            return filtered.sorted { $0.name < $1.name }
        case .priceLowHigh:
            return filtered.sorted { $0.price < $1.price }
        case .priceHighLow:
            return filtered.sorted { $0.price > $1.price }
        case .calories:
            return filtered.sorted { $0.calories < $1.calories }
        case .rating:
            return filtered.sorted { $0.rating > $1.rating }

        }
    }
}
