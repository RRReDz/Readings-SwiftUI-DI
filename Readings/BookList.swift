//
//  BookList.swift
//  Readings
//
//  Created by Riccardo Rossi Home on 09/04/22.
//

import SwiftUI

struct BookList: View {
    
    let books: [Book]
    
    var body: some View {
        List(books) { item in
            NavigationLink {
                BookDetail(book: item)
            } label: {
                Text(item.title)
            }
        }
    }
}

struct BookList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            BookList(books: allBooks)
        }
    }
}
