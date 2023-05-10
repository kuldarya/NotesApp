//
// NoteCellView.swift
// Notes
// 

import SwiftUI

/// Reusable View used to create a List of Notes.
struct NoteCellView: View {

    // MARK: - Properties

    var title: String
    var date: String
    var description: String

    // MARK: - Body

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            AlignedHStack(horizontalAlignment: .leading) {
                Text(title)
                    .fontWeight(.bold)
            }
            HStack {
                Text(date)
                Text(description)
            }
            .foregroundColor(.gray)
            .font(.caption)
            .fontWeight(.light)
        }
        .padding(.vertical, 2)
    }
}
