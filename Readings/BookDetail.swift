//
//  BookDetail.swift
//  Readings
//
//  Created by Riccardo Rossi Home on 09/04/22.
//

import SwiftUI

struct BookDetail: View {
    let book: Book
    @EnvironmentObject var readingListController: ReadingListController
    
    var body: some View {
        VStack {
            Text(book.title)
            Text(book.author)
            
            if readingListController.isBookInList(book) {
                Button {
                    readingListController.remove(book)
                } label: {
                    Text("Remove from reading list")
                }
            } else {
                Button {
                    readingListController.add(book)
                } label: {
                    Text("Add to reading list")
                }
            }
        }
    }
}

struct BookDetail_Previews: PreviewProvider {
    static var previews: some View {
        BookDetail(book: previewSelectedBook)
            .environmentObject(previewController)
    }
}
