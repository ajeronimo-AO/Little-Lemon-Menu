import SwiftUI

/// Detail page shown when a menu item is tapped.
/// 
struct MenuItemDetailView: View {
    let item: MenuItem

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                hero
                statsRow

                if !item.tags.isEmpty {
                    tagsRow
                }

                section("About") {
                    Text(item.summary)
                        .foregroundStyle(.secondary)
                }

                section("Ingredients") {
                    bulletList(item.ingredients)
                }

                section("Allergens") {
                    if item.allergens.isEmpty {
                        Text("No listed allergens")
                            .foregroundStyle(.secondary)
                    } else {
                        Text(item.allergens.joined(separator: ", "))
                            .foregroundStyle(.secondary)
                    }
                }

                section("Pairs well with") {
                    bulletList(item.pairings)
                }
            }
            .padding()
        }
        .navigationTitle(item.name)
    }

    // MARK: Sections

    private var hero: some View {
        VStack(spacing: 14) {
            ZStack {
                RoundedRectangle(cornerRadius: 24, style: .continuous)
                    .fill(item.category.tint.gradient)
                Image(systemName: item.symbol)
                    .font(.system(size: 80, weight: .semibold))
                    .foregroundStyle(.white)
            }
            .frame(height: 220)

            HStack {
                Label(item.category.rawValue, systemImage: item.category.symbol)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                Spacer()
                Text(item.price, format: .currency(code: "AOA").precision(.fractionLength(0)))
                    .font(.title2.bold())
            }

            HStack(spacing: 4) {
                ForEach(1...5, id: \.self) { index in
                    Image(systemName: Double(index) - 0.5 <= item.rating ? "star.fill" : "star")
                        .foregroundStyle(.yellow)
                }
                Text(String(format: "%.1f", item.rating))
                    .font(.subheadline.weight(.medium))
                    .padding(.leading, 4)
                Spacer()
            }
        }
    }

    private var statsRow: some View {
        HStack(spacing: 12) {
            StatTile(symbol: "flame.fill", value: "\(item.calories)", label: "kcal")
            StatTile(symbol: "timer", value: "\(item.prepMinutes) min", label: "Prep time")
            StatTile(symbol: "star", value: String(format: "%.1f", item.rating), label: "Rating")
        }
    }

    private var tagsRow: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 120), alignment: .leading)], alignment: .leading, spacing: 8) {
            ForEach(item.tags.sorted { $0.rawValue < $1.rawValue }) { tag in
                Label(tag.rawValue, systemImage: tag.symbol)
                    .font(.caption.weight(.medium))
                    .padding(.horizontal, 10)
                    .padding(.vertical, 6)
                    .background(Capsule().fill(Color.accentColor.opacity(0.15)))
            }
        }
    }

    // MARK: Helpers

    private func section<Content: View>(_ title: String, @ViewBuilder content: () -> Content) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.headline)
            content()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }

    private func bulletList(_ values: [String]) -> some View {
        VStack(alignment: .leading, spacing: 6) {
            ForEach(values, id: \.self) { value in
                HStack(alignment: .top, spacing: 8) {
                    Text("•")
                        .foregroundStyle(.tint)
                    Text(value)
                        .foregroundStyle(.secondary)
                }
            }
        }
    }
}

private struct StatTile: View {
    let symbol: String
    let value: String
    let label: String

    var body: some View {
        VStack(spacing: 6) {
            Image(systemName: symbol)
                .font(.title3)
                .foregroundStyle(.tint)
            Text(value)
                .font(.headline)
            Text(label)
                .font(.caption)
                .foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 12)
        .background(
            Color(uiColor: .secondarySystemBackground),
            in: RoundedRectangle(cornerRadius: 14, style: .continuous)
        )
    }
}


struct MenuItemView: PreviewProvider {
        static var previews: some View {
            MenuItemDetailView(item: MockMenu.items[0])
        }
    }

