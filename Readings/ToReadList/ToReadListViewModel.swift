//
//  ToReadListViewModel.swift
//  Readings
//
//  Created by Riccardo Rossi Home on 09/04/22.
//

import Foundation
import Combine

class ToReadListViewModel: ObservableObject {
    private let readingListController: ReadingListController
    private var cancellables = Set<AnyCancellable>()
    
    init(readingListController: ReadingListController) {
        self.readingListController = readingListController
        self.readingList = readingListController.readingViewDataList
        self.readingListController.$readingList
            .sink { [weak self] in
                self?.readingList = $0.map(BookListViewData.init)
            }
            .store(in: &cancellables)
    }
    
    @Published var readingList: [BookListViewData]
}

private extension ReadingListController {
    var readingViewDataList: [BookListViewData] {
        readingList.map(BookListViewData.init)
    }
}

private extension BookListViewData {
    init(from book: Book) {
        self.id = book.id
        self.title = book.title
        self.author = book.author
    }
}
