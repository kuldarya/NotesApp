//
//  NoteView.swift
//  Notes
//

import SwiftUI

struct NoteView: View {

    // MARK: - Properties

    @StateObject var viewModel = NoteViewModel()
    @State private var text = ""

    // MARK: - Body

    var body: some View {
        NavigationView {
            TextEditor(text: $text)
                .padding(.horizontal, 20)

                .toolbar {
                    Button("Done") {
                        viewModel.saveNote()
                    }
                    .foregroundColor(.black)
                    .font(.headline)
                }
        }
    }
}

struct NoteView_Previews: PreviewProvider {
    static var previews: some View {
        NoteView()
    }
}
