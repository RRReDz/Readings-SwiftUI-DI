//
//  ToReadList.swift
//  Readings
//
//  Created by Riccardo Rossi Home on 09/04/22.
//

import SwiftUI

struct ToReadList: View {
    @ObservedObject private var viewModel: ToReadListViewModel
    
    init(viewModel: ToReadListViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        List(viewModel.readingList) { item in
            HStack {
                Text(item.title)
                Text(item.author)
            }
        }
    }
}

struct ToReadList_Previews: PreviewProvider {
    static var previews: some View {
        ToReadList(
            viewModel: ToReadListViewModel(
                readingListController: previewController
            )
        )
    }
}
