//
//  View+Extensions.swift
//  Notes
//

import SwiftUI

extension View {
    func isHidden(hidden: Bool = false, removed: Bool = false) -> some View {
        modifier(
            IsHidden(hidden: hidden, removed: removed)
        )
    }
}
