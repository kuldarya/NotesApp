//
// AlignedHStack.swift
// Notes
// 

import SwiftUI

/// Helper for creating `HStack` with `HorizontalAlignment`.
struct AlignedHStack<Content: View>: View {

    // MARK: Properties

    var verticalAlignment: VerticalAlignment = .center
    var horizontalAlignment: HorizontalAlignment
    var spacing: CGFloat?
    @ViewBuilder let builder: () -> Content

    // MARK: Layout

    var body: some View {
        HStack(alignment: verticalAlignment, spacing: spacing) {
            if horizontalAlignment != .leading {
                Spacer()
            }
            builder()
            if horizontalAlignment != .trailing {
                Spacer()
            }
        }
    }
}
