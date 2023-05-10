//
//  NotesListView.swift
//  Notes
//

import SwiftUI

struct NotesListView: View {

    // MARK: - Properties

    @StateObject var viewModel: NotesListViewModel

    // MARK: - Body

    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.notes, id: \.id) { note in
                    ZStack {
                        NavigationLink {
                            NoteView(note: note)
                        } label: {
                            EmptyView()
                        }
                        .opacity(0.0)
                        .buttonStyle(.plain)
                        .navigationTitle("Notes")
                        .navigationBarTitleDisplayMode(.large)

                        HStack {
                            NoteCellView(
                                title: note.title,
                                date: note.date,
                                description: note.description
                            )
                        }
                    }
                }
            }
        }
    }
}

struct NotesListView_Previews: PreviewProvider {
    static var viewModel = NotesListViewModel()
    static var previews: some View {
        NotesListView(viewModel: viewModel)
    }
}
