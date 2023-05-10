//
//  NotesListViewModel.swift
//  Notes
//

import Foundation

final class NotesListViewModel: ObservableObject {
    @Published var notes: [Note] = [Note(id: 1, title: "Note 1", date: "14.04.2023", description: "this is the description"),
                         Note(id: 2, title: "Note 2", date: "11.04.2023", description: "this is the description"),
                         Note(id: 3, title: "Note 3", date: "10.04.2023", description: "this is the description")]

}
