//
//  BookDetailViewModel.swift
//  Readings
//
//  Created by Riccardo Rossi Home on 09/04/22.
//

import Foundation

class BookDetailViewModel: ObservableObject {
    private let book: Book
    private let readingListController: ReadingListController
    
    init(book: Book, readingListController: ReadingListController) {
        self.book = book
        self.readingListController = readingListController
        self.addOrRemoveBookText = readingListController.addOrRemoveTextButton(for: book)
    }
    
    @Published var addOrRemoveBookText: String
    var title: String { book.title }
    var author: String { book.author }
    
    func addOrRemoveBook() {
        if readingListController.isBookInList(book) {
            readingListController.remove(book)
        } else {
            readingListController.add(book)
        }
        addOrRemoveBookText = readingListController.addOrRemoveTextButton(for: book)
    }
}

private extension ReadingListController {
    func addOrRemoveTextButton(for book: Book) -> String {
        isBookInList(book) ? "Remove from reading list" : "Add to reading list"
    }
}
