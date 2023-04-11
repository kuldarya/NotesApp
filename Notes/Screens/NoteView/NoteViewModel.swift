//
// NoteViewModel.swift
// Notes
//

import Foundation

final class NoteViewModel: ObservableObject {
    @Published var doneButtonTapped: Bool = false

    func saveNote() {}
}
