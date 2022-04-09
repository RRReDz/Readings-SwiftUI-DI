//
//  ViewModelFactory.swift
//  Readings
//
//  Created by Riccardo Rossi Home on 09/04/22.
//

import Foundation

class ViewModelFactory {
    let readingListController = ReadingListController()
    let books = allBooks
    
    func makeBookListViewModel() -> BookListViewModel {
        BookListViewModel(
            books: books,
            viewForSelectedBook: { [unowned self] selectedBook in
                return BookDetail(
                    viewModel: self.makeBookDetailViewModel(
                        for: selectedBook
                    )
                )
            }
        )
    }
    
    func makeBookDetailViewModel(for book: Book) -> BookDetailViewModel {
        BookDetailViewModel(
            book: book,
            readingListController: readingListController
        )
    }
    
    func makeToReadListViewModel() -> ToReadListViewModel {
        ToReadListViewModel(
            readingListController: readingListController
        )
    }
}
