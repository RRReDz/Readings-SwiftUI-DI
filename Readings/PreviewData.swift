//
//  FakeData.swift
//  Readings
//
//  Created by Riccardo Rossi Home on 09/04/22.
//

import Foundation

var previewController: ReadingListController {
    let controller = ReadingListController()
    controller.add(Book(id: "1", title: "title1", author: "author1", imageName: "image1", pages: 30))
    controller.add(Book(id: "2", title: "title2", author: "author2", imageName: "image2", pages: 40))
    controller.add(Book(id: "3", title: "title3", author: "author3", imageName: "image3", pages: 20))
    return controller
}

let previewSelectedBook = Book(id: "2", title: "title2", author: "author2", imageName: "image2", pages: 40)
