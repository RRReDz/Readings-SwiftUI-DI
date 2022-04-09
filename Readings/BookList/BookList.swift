//
//  BookList.swift
//  Readings
//
//  Created by Riccardo Rossi Home on 09/04/22.
//

import SwiftUI

struct BookList: View {
    let viewModel: BookListViewModel
    
    var body: some View {
        List(viewModel.books) { book in
            NavigationLink {
                viewModel.viewForSelectedBook(book)
            } label: {
                Text(book.title)
            }
        }
    }
}

struct BookList_Previews: PreviewProvider {
    static var previews: some View {
        let bookDetailViewModelForBook: (Book) -> BookDetailViewModel = {
            BookDetailViewModel(
                book: $0,
                readingListController: previewController
            )
        }
        let bookListViewModel = BookListViewModel(
            books: allBooks,
            viewForSelectedBook: {
                BookDetail(
                    viewModel: bookDetailViewModelForBook($0)
                )
            }
        )
        NavigationView {
            BookList(
                viewModel: bookListViewModel
            )
        }
    }
}
