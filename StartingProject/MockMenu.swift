import Foundation

/// Mock data for the menu. Prices are in AOA.
/// 
enum MockMenu {
    static let items: [MenuItem] = [
        // MARK: Food
        MenuItem(
            name: "Bom Sabor Burger",
            summary: "Double beef patty, aged cheddar, caramelised onions and our house Sabor sauce on a toasted brioche bun.",
            category: .food, price: 4500, calories: 820, prepMinutes: 12, rating: 4.8,
            symbol: "takeoutbag.and.cup.and.straw.fill", tags: [],
            ingredients: ["Beef patty (2 × 100 g)", "Aged cheddar", "Caramelised onions", "House Sabor sauce", "Lettuce", "Tomato", "Brioche bun"],
            allergens: ["Gluten", "Milk", "Eggs"],
            pairings: ["Hand-cut fries", "Ginger lemonade"]
        ),
        MenuItem(
            name: "Chicken Burger",
            summary: "Crispy buttermilk chicken thigh with crunchy coleslaw and a kick of chili mayo.",
            category: .food, price: 4000, calories: 740, prepMinutes: 11, rating: 4.5,
            symbol: "takeoutbag.and.cup.and.straw.fill", tags: [.spicy],
            ingredients: ["Chicken thigh", "Buttermilk batter", "Coleslaw", "Chili mayo", "Brioche bun"],
            allergens: ["Gluten", "Eggs", "Milk"],
            pairings: ["Spicy chicken wings", "Passion fruit juice"]
        ),
        MenuItem(
            name: "Veggie Burger",
            summary: "Black bean and roasted beetroot patty with avocado, rocket and smoked paprika aioli.",
            category: .food, price: 3800, calories: 560, prepMinutes: 10, rating: 4.4,
            symbol: "leaf.fill", tags: [.vegetarian],
            ingredients: ["Black beans", "Roasted beetroot", "Oats", "Avocado", "Rocket", "Smoked paprika aioli", "Wholemeal bun"],
            allergens: ["Gluten", "Eggs"],
            pairings: ["Garden salad", "Mango smoothie"]
        ),
        MenuItem(
            name: "Grilled Fish Platter",
            summary: "Whole grilled tilapia with lemon-garlic butter, sautéed greens and steamed rice.",
            category: .food, price: 6500, calories: 690, prepMinutes: 20, rating: 4.7,
            symbol: "fish.fill", tags: [.glutenFree],
            ingredients: ["Tilapia", "Lemon-garlic butter", "Sautéed greens", "Rice", "Fresh herbs"],
            allergens: ["Fish", "Milk"],
            pairings: ["Garden salad", "Iced hibiscus tea"]
        ),
        MenuItem(
            name: "Spicy Chicken Wings",
            summary: "Eight wings tossed in a piri-piri glaze, served with celery sticks and blue cheese dip.",
            category: .food, price: 3900, calories: 880, prepMinutes: 15, rating: 4.6,
            symbol: "flame.fill", tags: [.spicy, .glutenFree],
            ingredients: ["Chicken wings", "Piri-piri glaze", "Celery", "Blue cheese dip"],
            allergens: ["Milk"],
            pairings: ["Ginger lemonade", "Chicken burger"]
        ),
        MenuItem(
            name: "Garden Salad",
            summary: "Mixed leaves, cherry tomatoes, cucumber and avocado with a light lime vinaigrette.",
            category: .food, price: 2800, calories: 230, prepMinutes: 5, rating: 4.2,
            symbol: "leaf.fill", tags: [.vegetarian, .glutenFree],
            ingredients: ["Mixed leaves", "Cherry tomatoes", "Cucumber", "Avocado", "Lime vinaigrette"],
            allergens: ["Mustard"],
            pairings: ["Grilled fish platter", "Veggie burger"]
        ),
        MenuItem(
            name: "Hand-cut Fries",
            summary: "Double-fried potatoes with sea salt and fresh rosemary.",
            category: .food, price: 1500, calories: 380, prepMinutes: 6, rating: 4.3,
            symbol: "sparkles", tags: [.vegetarian, .glutenFree],
            ingredients: ["Potatoes", "Sunflower oil", "Sea salt", "Rosemary"],
            allergens: [],
            pairings: ["Bom Sabor burger", "Chicken burger"]
        ),
        
        MenuItem(
            name: "Hand-cut Fries",
            summary: "Double-fried potatoes with sea salt and fresh rosemary.",
            category: .food, price: 1500, calories: 380, prepMinutes: 6, rating: 4.3,
            symbol: "sparkles", tags: [.vegetarian, .glutenFree],
            ingredients: ["Potatoes", "Sunflower oil", "Sea salt", "Rosemary"],
            allergens: [],
            pairings: ["Bom Sabor burger", "Chicken burger"]
        ),
        
        MenuItem(
            name: "Hand-cut Fries",
            summary: "Double-fried potatoes with sea salt and fresh rosemary.",
            category: .food, price: 1500, calories: 380, prepMinutes: 6, rating: 4.3,
            symbol: "sparkles", tags: [.vegetarian, .glutenFree],
            ingredients: ["Potatoes", "Sunflower oil", "Sea salt", "Rosemary"],
            allergens: [],
            pairings: ["Bom Sabor burger", "Chicken burger"]
        ),
        
        MenuItem(
            name: "Hand-cut Fries",
            summary: "Double-fried potatoes with sea salt and fresh rosemary.",
            category: .food, price: 1500, calories: 380, prepMinutes: 6, rating: 4.3,
            symbol: "sparkles", tags: [.vegetarian, .glutenFree],
            ingredients: ["Potatoes", "Sunflower oil", "Sea salt", "Rosemary"],
            allergens: [],
            pairings: ["Bom Sabor burger", "Chicken burger"]
        ),
        
        MenuItem(
            name: "Hand-cut Fries",
            summary: "Double-fried potatoes with sea salt and fresh rosemary.",
            category: .food, price: 1500, calories: 380, prepMinutes: 6, rating: 4.3,
            symbol: "sparkles", tags: [.vegetarian, .glutenFree],
            ingredients: ["Potatoes", "Sunflower oil", "Sea salt", "Rosemary"],
            allergens: [],
            pairings: ["Bom Sabor burger", "Chicken burger"]
        ),
        
        MenuItem(
            name: "Hand-cut Fries",
            summary: "Double-fried potatoes with sea salt and fresh rosemary.",
            category: .food, price: 1500, calories: 380, prepMinutes: 6, rating: 4.3,
            symbol: "sparkles", tags: [.vegetarian, .glutenFree],
            ingredients: ["Potatoes", "Sunflower oil", "Sea salt", "Rosemary"],
            allergens: [],
            pairings: ["Bom Sabor burger", "Chicken burger"]
        ),

        // MARK: Drinks
        MenuItem(
            name: "Passion Fruit Juice",
            summary: "Freshly pressed maracujá, lightly sweetened and served over ice.",
            category: .drink, price: 1800, calories: 150, prepMinutes: 3, rating: 4.7,
            symbol: "drop.fill", tags: [.vegetarian, .glutenFree],
            ingredients: ["Passion fruit", "Water", "Cane sugar", "Ice"],
            allergens: [],
            pairings: ["Chicken burger", "Passion fruit cheesecake"]
        ),
        MenuItem(
            name: "Mango Smoothie",
            summary: "Ripe mango blended with Greek yoghurt and a touch of honey.",
            category: .drink, price: 2200, calories: 260, prepMinutes: 4, rating: 4.5,
            symbol: "drop.fill", tags: [.vegetarian, .glutenFree],
            ingredients: ["Mango", "Greek yoghurt", "Honey", "Ice"],
            allergens: ["Milk"],
            pairings: ["Veggie burger", "Fruit salad"]
        ),
        MenuItem(
            name: "Ginger Lemonade",
            summary: "Fresh lemon, grated ginger and mint, shaken with sparkling water.",
            category: .drink, price: 1600, calories: 110, prepMinutes: 3, rating: 4.4,
            symbol: "mug.fill", tags: [.vegetarian, .glutenFree],
            ingredients: ["Lemon", "Fresh ginger", "Mint", "Sugar", "Sparkling water"],
            allergens: [],
            pairings: ["Spicy chicken wings", "Bom Sabor burger"]
        ),
        MenuItem(
            name: "Espresso",
            summary: "A double shot from our house single-origin blend.",
            category: .drink, price: 1200, calories: 5, prepMinutes: 2, rating: 4.6,
            symbol: "cup.and.saucer.fill", tags: [.vegetarian, .glutenFree],
            ingredients: ["Single-origin coffee beans", "Water"],
            allergens: [],
            pairings: ["Coconut pudim", "Chocolate lava cake"]
        ),
        MenuItem(
            name: "Cappuccino",
            summary: "Espresso topped with silky steamed milk and a dusting of cocoa.",
            category: .drink, price: 1800, calories: 120, prepMinutes: 4, rating: 4.5,
            symbol: "cup.and.saucer.fill", tags: [.vegetarian, .glutenFree],
            ingredients: ["Espresso", "Steamed whole milk", "Cocoa powder"],
            allergens: ["Milk"],
            pairings: ["Chocolate lava cake"]
        ),
        MenuItem(
            name: "Iced Hibiscus Tea",
            summary: "Cold-brewed hibiscus with orange zest and a hint of honey.",
            category: .drink, price: 1400, calories: 90, prepMinutes: 3, rating: 4.3,
            symbol: "mug.fill", tags: [.vegetarian, .glutenFree],
            ingredients: ["Hibiscus flowers", "Orange zest", "Honey", "Ice"],
            allergens: [],
            pairings: ["Grilled fish platter", "Mango sorbet"]
        ),
        
        MenuItem(
            name: "Iced Hibiscus Tea",
            summary: "Cold-brewed hibiscus with orange zest and a hint of honey.",
            category: .drink, price: 1400, calories: 90, prepMinutes: 3, rating: 4.3,
            symbol: "mug.fill", tags: [.vegetarian, .glutenFree],
            ingredients: ["Hibiscus flowers", "Orange zest", "Honey", "Ice"],
            allergens: [],
            pairings: ["Grilled fish platter", "Mango sorbet"]
        ),
        
        MenuItem(
            name: "Iced Hibiscus Tea",
            summary: "Cold-brewed hibiscus with orange zest and a hint of honey.",
            category: .drink, price: 1400, calories: 90, prepMinutes: 3, rating: 4.3,
            symbol: "mug.fill", tags: [.vegetarian, .glutenFree],
            ingredients: ["Hibiscus flowers", "Orange zest", "Honey", "Ice"],
            allergens: [],
            pairings: ["Grilled fish platter", "Mango sorbet"]
        ),

        // MARK: Desserts
        MenuItem(
            name: "Chocolate Lava Cake",
            summary: "Warm dark chocolate fondant with a molten centre, served with vanilla gelato.",
            category: .dessert, price: 3200, calories: 520, prepMinutes: 14, rating: 4.9,
            symbol: "birthday.cake.fill", tags: [.vegetarian],
            ingredients: ["Dark chocolate", "Butter", "Eggs", "Sugar", "Flour", "Vanilla gelato"],
            allergens: ["Gluten", "Eggs", "Milk"],
            pairings: ["Cappuccino", "Espresso"]
        ),
        MenuItem(
            name: "Passion Fruit Cheesecake",
            summary: "Baked cheesecake on a biscuit base, topped with tangy passion fruit curd.",
            category: .dessert, price: 3800, calories: 480, prepMinutes: 5, rating: 4.7,
            symbol: "heart.fill", tags: [.vegetarian],
            ingredients: ["Cream cheese", "Passion fruit curd", "Digestive biscuits", "Butter", "Sugar"],
            allergens: ["Gluten", "Milk", "Eggs"],
            pairings: ["Passion fruit juice"]
        ),
        MenuItem(
            name: "Coconut Pudim",
            summary: "Silky coconut pudding with caramel, unmoulded and sliced.",
            category: .dessert, price: 2500, calories: 390, prepMinutes: 6, rating: 4.6,
            symbol: "star.fill", tags: [.vegetarian, .glutenFree],
            ingredients: ["Coconut milk", "Eggs", "Condensed milk", "Sugar", "Vanilla"],
            allergens: ["Milk", "Eggs"],
            pairings: ["Espresso"]
        ),
        MenuItem(
            name: "Fruit Salad",
            summary: "Seasonal tropical fruit with lime and fresh mint.",
            category: .dessert, price: 1800, calories: 160, prepMinutes: 5, rating: 4.2,
            symbol: "sparkles", tags: [.vegetarian, .glutenFree],
            ingredients: ["Papaya", "Pineapple", "Mango", "Banana", "Lime", "Mint"],
            allergens: [],
            pairings: ["Mango smoothie"]
        ),
        MenuItem(
            name: "Vanilla Gelato",
            summary: "Creamy house-made gelato, churned in small batches.",
            category: .dessert, price: 2000, calories: 260, prepMinutes: 2, rating: 4.5,
            symbol: "snowflake", tags: [.vegetarian, .glutenFree],
            ingredients: ["Whole milk", "Cream", "Sugar", "Vanilla bean", "Egg yolks"],
            allergens: ["Milk", "Eggs"],
            pairings: ["Chocolate lava cake"]
        ),
        MenuItem(
            name: "Mango Sorbet",
            summary: "Refreshing sorbet made from ripe mango and lime. Dairy-free.",
            category: .dessert, price: 1900, calories: 180, prepMinutes: 2, rating: 4.4,
            symbol: "sun.max.fill", tags: [.vegetarian, .glutenFree],
            ingredients: ["Mango", "Sugar", "Lime juice", "Water"],
            allergens: [],
            pairings: ["Iced hibiscus tea"]
        ),
    ]
}
