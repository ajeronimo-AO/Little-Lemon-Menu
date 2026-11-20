//
//  MenuItemsView.swift
//  StartingProject
//
//  Created by Jeronimo on 17/11/26.
//

import SwiftUI

/// Main screen: a grid of menu items with a navigation button to the options page.
///
struct MenuItemsView: View {
    @State private var filter = MenuFilter()
    private let items = MockMenu.items
    private let columns = [GridItem(.adaptive(minimum: 140), spacing: 14)]

    private var visibleItems: [MenuItem] {
        filter.apply(to: items)
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    categoryChips

                    Text("\(visibleItems.count) items")
                        .font(.footnote)
                        .foregroundStyle(.secondary)

                    if visibleItems.isEmpty {
                        ContentUnavailableView(
                            "No items match",
                            systemImage: "line.3.horizontal.decrease.circle",
                            description: Text("Open Menu Options to widen your filters.")
                        )
                        .frame(maxWidth: .infinity)
                    } else {
                        LazyVGrid(columns: columns, spacing: 16) {
                            ForEach(visibleItems) { item in
                                NavigationLink(value: MenuRoute.item(item)) {
                                    MenuItemCard(item: item)
                                }
                                .buttonStyle(.plain)
                            }
                        }
                    }
                }
                .padding(16)
            }
            .navigationTitle("Menu")
            
            //
            .toolbar {
                ToolbarItem(placement: .automatic) {
                    NavigationLink(value: MenuRoute.options) {
                        Image(systemName: "slider.horizontal.3")
                            .accessibilityLabel("Menu options")
                    }
                }
            }
            .navigationDestination(for: MenuRoute.self) { route in
                switch route {
                case .item(let item):
                    MenuItemDetailView(item: item)
                case .options:
                    MenuOptionsView(filter: filter)
                }
            }
        }
    }

    // MARK: Quick category chips

    private var categoryChips: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8) {
                chip(title: "All", symbol: "square.grid.2x2", isSelected: filter.category == nil) {
                    filter.category = nil
                }
                ForEach(MenuCategory.allCases) { category in
                    chip(title: category.rawValue, symbol: category.symbol, isSelected: filter.category == category) {
                        filter.category = category
                    }
                }
            }
        }
    }

    private func chip(title: String, symbol: String, isSelected: Bool, action: @escaping () -> Void) -> some View {
        Button(action: action) {
            Label(title, systemImage: symbol)
                .font(.subheadline.weight(.medium))
                .padding(.horizontal, 12)
                .padding(.vertical, 8)
                .background(
                    Capsule().fill(isSelected ? Color.accentColor : Color.secondary.opacity(0.12))
                )
                .foregroundStyle(isSelected ? Color.white : Color.primary)
        }
        .buttonStyle(.plain)
    }
}

/// A single grid cell.
struct MenuItemCard: View {
    let item: MenuItem

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            ZStack {
                RoundedRectangle(cornerRadius: 14, style: .continuous)
                    .fill(item.category.tint.gradient)
                Image(systemName: item.symbol)
                    .font(.system(size: 44, weight: .semibold))
                    .foregroundStyle(.white)
            }
            .frame(height: 110)

            Text(item.name)
                .font(.headline)
                .lineLimit(2)
                .frame(maxWidth: .infinity, alignment: .leading)

            HStack {
                Text(item.price, format: .currency(code: "AOA").precision(.fractionLength(0)))
                    .font(.subheadline.weight(.semibold))
                Spacer()
                Label(String(format: "%.1f", item.rating), systemImage: "star.fill")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
        }
        .padding(12)
        .background(
            Color.secondary.opacity(0.12),
            in: RoundedRectangle(cornerRadius: 18, style: .continuous)
        )
        .accessibilityElement(children: .combine)
    }
}
