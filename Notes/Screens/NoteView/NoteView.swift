//
//  NoteView.swift
//  Notes
//

import SwiftUI

struct NoteView: View {

    // MARK: - Properties

    @StateObject var viewModel = NoteViewModel()
    @State private var text = ""
    @FocusState private var keyboardFocused: Bool

    // MARK: - Body

    var body: some View {
        NavigationView {
            TextEditor(text: $text)
                .padding(.horizontal, 20)
                .accentColor(.orange)
                .focused($keyboardFocused)
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                        keyboardFocused = true
                    }
                }
                .toolbar {
                    ToolbarItemGroup(placement: .primaryAction) {
                        Button {
                            // create checklist
                        } label: {
                            Image(systemName: "checklist")
                                .foregroundColor(.orange)
                        }

                        Button {
                            // share note
                        } label: {
                            Image(systemName: "square.and.arrow.up")
                                .foregroundColor(.orange)
                        }

                        Button {
                            // delete
                        } label: {
                            Image(systemName: "trash")
                                .foregroundColor(.orange)
                        }

                        Button("Done") {
                            viewModel.doneButtonTapped = true

                            if viewModel.doneButtonTapped {
                                keyboardFocused = false
                                viewModel.saveNote()
                            }
                        }
                        .isHidden(
                            hidden: (viewModel.doneButtonTapped && !keyboardFocused),
                            removed: true
                        )
                        .foregroundColor(.orange)
                        .font(.headline)
                    }
                }
        }
    }
}

struct NoteView_Previews: PreviewProvider {
    static var previews: some View {
        NoteView()
    }
}
