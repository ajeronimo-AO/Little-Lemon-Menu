import SwiftUI

/// "Menu item options" page: filtering and sorting for the menu grid.

struct MenuOptionsView: View {
    @Bindable var filter: MenuFilter

    var body: some View {
        Form {
            Section("Category") {
                Picker("Category", selection: $filter.category) {
                    Text("All").tag(nil as MenuCategory?)
                    ForEach(MenuCategory.allCases) { category in
                        Text(category.rawValue).tag(Optional(category))
                    }
                }
                .pickerStyle(.segmented)
            }

            Section {
                ForEach(DietaryTag.allCases) { tag in
                    Toggle(isOn: binding(for: tag)) {
                        Label(tag.rawValue, systemImage: tag.symbol)
                    }
                }
            } header: {
                Text("Dietary")
            } footer: {
                Text("Shows only items that match every tag you select.")
            }

            Section {
                Slider(
                    value: $filter.maxPrice,
                    in: 500...MenuFilter.priceCeiling,
                    step: MenuFilter.priceStep
                )
                LabeledContent("Up to") {
                    Text(filter.maxPrice, format: .currency(code: "AOA").precision(.fractionLength(0)))
                        .monospacedDigit()
                }
            } header: {
                Text("Price")
            } footer: {
                Text("Hides items above this price.")
            }

            Section("Sort by") {
                Picker("Sort by", selection: $filter.sort) {
                    ForEach(SortOption.allCases) { option in
                        Text(option.rawValue).tag(option)
                    }
                }
            }

            Section {
                Button("Reset all options", role: .destructive) {
                    filter.reset()
                }
                .disabled(!filter.hasChanges)
            }
        }
        .navigationTitle("Menu Options")

    }

    private func binding(for tag: DietaryTag) -> Binding<Bool> {
        Binding(
            get: { filter.requiredTags.contains(tag) },
            set: { isOn in
                if isOn {
                    filter.requiredTags.insert(tag)
                } else {
                    filter.requiredTags.remove(tag)
                }
            }
        )
    }
}
