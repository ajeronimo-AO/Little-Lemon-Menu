import XCTest
@testable import StartingProject

final class MenuItemTests: XCTestCase {
    func testMenuItemTitle() {
        let title = "Bom Sabor Burger"
        let menuItem = makeMenuItem(name: title)

        XCTAssertEqual(menuItem.name, title)
    }

    func testMenuItemIngredients() {
        let ingredients = ["Beef patty", "Aged cheddar", "Brioche bun"]
        let menuItem = makeMenuItem(ingredients: ingredients)

        XCTAssertEqual(menuItem.ingredients, ingredients)
    }

    private func makeMenuItem(
        name: String = "Test Menu Item",
        ingredients: [String] = []
    ) -> MenuItem {
        MenuItem(
            name: name,
            summary: "Test summary",
            category: .food,
            price: 1000,
            calories: 500,
            prepMinutes: 10,
            rating: 4.5,
            symbol: "fork.knife",
            tags: [],
            ingredients: ingredients,
            allergens: [],
            pairings: []
        )
    }
}
