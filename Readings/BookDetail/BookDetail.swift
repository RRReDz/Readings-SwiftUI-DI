//
//  BookDetail.swift
//  Readings
//
//  Created by Riccardo Rossi Home on 09/04/22.
//

import SwiftUI

struct BookDetail: View {
    @ObservedObject var viewModel: BookDetailViewModel
    
    var body: some View {
        VStack {
            Text(viewModel.title)
            Text(viewModel.author)
            
            Button(action: viewModel.addOrRemoveBook) {
                Text(viewModel.addOrRemoveBookText)
            }
        }
    }
}

struct BookDetail_Previews: PreviewProvider {
    static var previews: some View {
        BookDetail(
            viewModel: BookDetailViewModel(
                book: previewSelectedBook,
                readingListController: previewController
            )
        )
    }
}
