//
//  BookListViewModel.swift
//  Readings
//
//  Created by Riccardo Rossi Home on 09/04/22.
//

import Foundation

class BookListViewModel {
    let books: [Book]
    let viewForSelectedBook: (Book) -> BookDetail
    
    init(books: [Book], viewForSelectedBook: @escaping (Book) -> BookDetail) {
        self.books = books
        self.viewForSelectedBook = viewForSelectedBook
    }
}
