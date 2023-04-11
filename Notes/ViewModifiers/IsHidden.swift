//
//  IsHidden.swift
//  Notes
//

import SwiftUI

/// Custom ViewModifier to manage the presence of the View in the view hierarchy.
struct IsHidden: ViewModifier {

    /// Boolean value to determine the hide/show state of the view.
    var hidden = false
    /// Boolean value to determine whether to keep hidden view in view hierarchy or not.
    var removed = false

    func body(content: Content) -> some View {
        if hidden {
            if removed {
                /// remove View from hierarchy
            } else {
                content.hidden()
            }
        } else {
            content
        }
    }
}
