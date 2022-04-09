//
//  ReadingListController.swift
//  Readings
//
//  Created by Riccardo Rossi Home on 09/04/22.
//

import Combine

class ReadingListController: ObservableObject {
    @Published private(set) var readingList: [Book] = []
    
    func isBookInList(_ book: Book) -> Bool {
        readingList.contains { $0 == book }
    }
    
    func add(_ book: Book) {
        readingList.append(book)
    }
    
    func remove(_ book: Book) {
        readingList.removeAll { $0 == book }
    }
}

struct Book: Equatable, Identifiable {
    let id: String
    let title: String
    let author: String
    let imageName: String
    let pages: Int
}
